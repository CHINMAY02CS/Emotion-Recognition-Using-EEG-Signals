# Emotion-Recognition-Using-EEG-Signals

An electroencephalogram (EEG) is a test that detects electrical activity in our brain using small, metal discs (electrodes) attached to our scalp.

## DATASET

DEAP ( A Dataset for Emotion Analysis using Physiological and Audiovisual Signals ) is used.

EEG and peripheral physiological signals of 32 participants were recorded as each watched 40 one minute long excerpts of music videos.

Participants rated each video in terms of the levels of arousal, valence, like/dislike, dominance and familiarity.
These readings are analyzed to recognize the emotion of the participant

This is the dataset with 32 subjects with 40 electrode readings out of which 32 electrodes are considered

![Datasetandlabel](https://github.com/CHINMAY02CS/Emotion-Recognition-Using-EEG-Signals/blob/main/Dataset%20and%20label%20generation.JPG)

## PROBLEM STATEMENT

- Compute mean, kurtosis, skewness and standard deviation of the EEG signals
- Implement grid search Random forest that gives the optimal parameters
- Plot OOB error estimates with the changes in the no. of trees. for classification task

## LABEL ENCODING

### VALENCE AROUSAL MODEL 
![VA])(https://github.com/CHINMAY02CS/Emotion-Recognition-Using-EEG-Signals/blob/main/VA%20MODEL.png)

HAPPY (1) – Valence, Arousal both are higher than threshold
<br>
SCARED (2) – Arousal higher than threshold, Valence lower than threshold
<br>
SAD (3) – Valence, Arousal both are lower than threshold
<br>
CALM (4) – Arousal lesser than threshold, Valence greater than threshold

## RESULTS

This is the result for using kNN classifier.
![kNN](https://github.com/CHINMAY02CS/Emotion-Recognition-Using-EEG-Signals/blob/main/kNN%20result.JPG)

This is the result for using SVM - linear kernel classifier.
![kNN](https://github.com/CHINMAY02CS/Emotion-Recognition-Using-EEG-Signals/blob/main/SVM%20linear.JPG)

This is the result for using SVM - RFB kernel classifier.
![kNN](https://github.com/CHINMAY02CS/Emotion-Recognition-Using-EEG-Signals/blob/main/SVN%20result.JPG)

This is the result for using Random Forest Classifier
![randomforest](https://github.com/CHINMAY02CS/Emotion-Recognition-Using-EEG-Signals/blob/main/randomforest.JPG)

This is the result for using Random Forest Classifier with optimised parameters
![randomforest](https://github.com/CHINMAY02CS/Emotion-Recognition-Using-EEG-Signals/blob/main/Randomforestoptimised.JPG)
