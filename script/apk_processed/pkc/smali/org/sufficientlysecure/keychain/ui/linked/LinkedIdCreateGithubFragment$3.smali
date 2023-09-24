.class Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$3;
.super Landroid/os/AsyncTask;
.source "LinkedIdCreateGithubFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->revokeToken(Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 357
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$3;->val$token:Ljava/lang/String;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 357
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 361
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.github.com/applications/c942cd81844d94e7e41b/tokens/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$3;->val$token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    const-string v0, "DELETE"

    .line 364
    invoke-virtual {v5, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "c942cd81844d94e7e41b:f1dd17e70a0614abbd9310b00a310e23c6c8edff"

    .line 366
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    .line 365
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v5, 0x0

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$3;--->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
