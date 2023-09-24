.class Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;
.super Landroid/os/AsyncTask;
.source "LinkedIdCreateGithubFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->step2PostGist(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field mException:Ljava/lang/Exception;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$gistText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 256
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->val$gistText:Ljava/lang/String;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->val$accessToken:Ljava/lang/String;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 264
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 266
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "content"

    .line 267
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->val$gistText:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "openpgp.txt"

    .line 270
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "public"

    const/4 v4, 0x1

    .line 273
    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "description"

    .line 274
    iget-object v4, v6, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    const v5, 0x7f110944

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "files"

    .line 275
    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "https://api.github.com/gists"

    .line 277
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->val$accessToken:Ljava/lang/String;

    invoke-static {v2, v7, v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->access$200(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    sub-long v4, v2, v0

    const-wide/16 v0, 0x3e8

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    sub-long v2, v0, v4

    .line 282
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_0
    return-object v7

    .line 292
    :catch_1
    new-instance v7, Ljava/lang/AssertionError;

    const-string v0, "json error, this is a bug!"

    invoke-direct {v7, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    :catch_2
    move-exception v7

    .line 290
    iput-object v7, v6, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->mException:Ljava/lang/Exception;

    const/4 v7, 0x0

    return-object v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;--->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 256
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 299
    invoke-super {v4, v5}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;--->onPostExecute(Lorg/json/JSONObject;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez v5, :cond_4

    .line 310
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->POST_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    invoke-virtual {v5, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->setState(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;)V

    .line 311
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)V

    .line 313
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->mException:Ljava/lang/Exception;

    instance-of v5, v5, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_1

    const v5, 0x7f110943

    .line 314
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v5, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->mException:Ljava/lang/Exception;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;

    if-eqz v5, :cond_2

    const v5, 0x7f110941

    const/4 v2, 0x1

    .line 316
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->mException:Ljava/lang/Exception;

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;->mResponse:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {v0, v5, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v5, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    .line 318
    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->mException:Ljava/lang/Exception;

    instance-of v5, v5, Ljava/io/IOException;

    if-eqz v5, :cond_3

    const v5, 0x7f110942

    .line 320
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v5, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :try_start_0
    const-string v0, "id"

    .line 329
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "owner"

    .line 330
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v1, "login"

    .line 331
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://gist.github.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    .line 334
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;->create(Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mButtonContainer:Landroid/widget/ViewAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 341
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    .line 342
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;->toUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 346
    :cond_5
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->val$accessToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;)V

    .line 348
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    invoke-static {v0, v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->access$600(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;)V

    return-void

    .line 336
    :catch_0
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->POST_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->setState(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;)V

    return-void
.end method
