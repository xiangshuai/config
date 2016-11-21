SET job.name 'Diff(1) Via Join'

-- Erase Outputs
rmf first_only
rmf second_only

%default A "corpus/tmp_min/user_data_ngram_min"
%default B "corpus/tmp_min_pig/user_data_ngram_min"

-- Process Inputs
a = LOAD '$A' USING PigStorage('\n') AS First: chararray;
b = LOAD '$B' USING PigStorage('\n') AS Second: chararray;

-- Combine Data
combined = JOIN a BY First FULL OUTER, b BY Second;

-- Output Data
SPLIT combined INTO first_raw IF Second IS NULL,
                    second_raw IF First IS NULL;
					first_only = FOREACH first_raw GENERATE First;
					second_only = FOREACH second_raw GENERATE Second;
					STORE first_only INTO 'first_only' USING PigStorage();
					STORE second_only INTO 'second_only' USING PigStorage();
