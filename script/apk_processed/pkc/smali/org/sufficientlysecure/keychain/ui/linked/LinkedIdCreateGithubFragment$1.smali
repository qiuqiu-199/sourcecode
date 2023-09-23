.class Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;
.super Landroid/os/AsyncTask;
.source "LinkedIdCreateGithubFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->step1GetOAuthToken()V
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

.field final synthetic val$gistText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 187
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->val$gistText:Ljava/lang/String;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const/4 v4, 0x0

    .line 195
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "client_id"

    const-string v2, "c942cd81844d94e7e41b"

    .line 196
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "client_secret"

    const-string v2, "f1dd17e70a0614abbd9310b00a310e23c6c8edff"

    .line 197
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "code"

    .line 198
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "state"

    .line 199
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "https://github.com/login/oauth/access_token"

    .line 201
    invoke-static {v1, v0, v4}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->access$200(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 206
    :catch_0
    new-instance v4, Ljava/lang/AssertionError;

    const-string v0, "json error, this is a bug!"

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :catch_1
    move-exception v0

    .line 204
    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->mException:Ljava/lang/Exception;

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;--->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 187
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 213
    invoke-super {v4, v5}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;--->onPostExecute(Lorg/json/JSONObject;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_2

    const-string v1, "access_token"

    const/4 v3, 0x0

    .line 223
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    const-string v1, "access_token"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->val$gistText:Ljava/lang/String;

    invoke-static {v0, v5, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 224
    :cond_2
    :goto_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->AUTH_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->setState(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;)V

    .line 225
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)V

    if-eqz v5, :cond_3

    const v5, 0x7f110940

    .line 228
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v5, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 232
    :cond_3
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->mException:Ljava/lang/Exception;

    instance-of v5, v5, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_4

    const v5, 0x7f110943

    .line 233
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v5, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_1

    .line 234
    :cond_4
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->mException:Ljava/lang/Exception;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;

    if-eqz v5, :cond_5

    const v5, 0x7f110941

    const/4 v1, 0x1

    .line 235
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->mException:Ljava/lang/Exception;

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;->mResponse:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v5, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    .line 237
    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_1

    .line 238
    :cond_5
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->mException:Ljava/lang/Exception;

    instance-of v5, v5, Ljava/io/IOException;

    if-eqz v5, :cond_6

    const v5, 0x7f110942

    .line 239
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v5, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :cond_6
    :goto_1
    return-void
.end method
