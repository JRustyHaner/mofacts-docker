`custom_models.json` overrides the max request length of the default docker instance. This is necessary for using the models on longer pieces of text, e.g. book chapters. For reference, the approximate original max lengths are [here](https://github.com/allenai/allennlp-demo/blob/12d66f5f9fe27e894765774c3f88ee0014e3a28f/models.json) (this is not verified as the same commit as the Docker image, but it is within a few months of it).

Additionally, binding this director to the docker image allows the image to cache models here instead of downloading them on every boot. Whether that is a cost effective option depends on the cost of storage vs. network transfers.