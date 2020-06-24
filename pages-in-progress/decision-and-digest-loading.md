# Decision and digest loading

If a decision letter fails to load it could be for one of five reasons:

* Kriya is down \(we will receive a success email for these I think\).
* The article has not yet been sent to Kriya \(we will receive a success email for this - not a failure one\). The DL should be reloaded once the article has been loaded to Kriya - this can be done by downloading and then re-uploading the zip on the AWS bucket.
* An article is currently in the 'Content loading' stage in Kriya. This will result in a failure email.
* Again the action should be to load the DL once the article has been loaded properly to Kriya

  Editorial have zipped up the files incorrectly. The failure message might say something like:

> \[No articles to check\]

Check that the files have been included as direct children of the zip, i.e. that a folder hasn't been included in the zip. If all the files are zipped correctly, then a GitHub ticket should be raised in the issues repo, and assigned to Graham to investigate.

* Other. If a failure message comes through and you are unsure what it means, it's possible that the content hasn't been parsed correctly by the parser. A GitHub ticket should be raised in the issues repo, and assigned to Graham to investigate.

Digests are simpler, it's either Kriya is down \(or the article hasn't yet been loaded, but that's much less likely\), or there's a problem with the files or parser. We don't check the files, Features do, but in all likeliness, if they don't know the reason \(and it's not failed because Kriya is donw or the article hasn't loaded\), then we'll need to raise a ticket for Graham to investigate.

