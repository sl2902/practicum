## Project description

The Film Junky Union, a new edgy community for classic movie enthusiasts, is developing a system for filtering and categorizing movie reviews. The goal is to train a model to automatically detect negative reviews. You'll be using a dataset of IMBD movie reviews with polarity labelling to build a model for classifying positive and negative reviews. It will need to reach an F1 score of at least 0.85.



## Description of the data

- `review`: the review text
- `pos: the target`, '0' for negative and '1' for positive
- `ds_part`: 'train'/'test' for the train/test part of dataset, correspondingly



## Answer these questions:

- Conduct an EDA and make your conclusion on the class imbalance.
- Preprocess the data for modeling.
- Train at least three different models for the given train dataset.
- Test the models for the given test dataset.
- Compose a few of your own reviews and classify them with all the models.
- Check for differences between the testing results of models in the above two points. Try to explain them.
- Present your findings.


## General conclusion

- Despite the relatively lower f1 score produced by the BERT embeddings, the predictions on the sample reviews are of a higher quality compared to the predictions produced by the model with the best f1 score; this seems to suggest that f1 score is not an appropriate evaluation metric for BERT trained models.
- The BERT embeddings were obtained using the GPU provided in the Colab platform;
- BERT embeddings definitely outperform TFIDF vectors because it captures the semantic representation of the underlying dataset on which it was trained. Therefore, despite, the relatively higher training time, BERT embeddings