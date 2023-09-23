.class public Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;
.source "LinkedIdCreateGithubFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;,
        Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment<",
        "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final ARG_GITHUB_COOKIE:Ljava/lang/String; = "github_cookie"


# instance fields
.field mButtonContainer:Landroid/widget/ViewAnimator;

.field mFingerprint:[B

.field private mFinishOnStop:Z

.field private mLinkedIdComment:Landroid/widget/TextView;

.field private mLinkedIdTitle:Landroid/widget/TextView;

.field mMasterKeyId:J

.field private mOAuthCode:Ljava/lang/String;

.field private mOAuthState:Ljava/lang/String;

.field private mRetryButton:Landroid/widget/Button;

.field private mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

.field mStatus1:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

.field mStatus2:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

.field mStatus3:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 106
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;-><init>(Ljava/lang/Integer;)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mOAuthCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mOAuthCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mOAuthState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;
        }
    .end annotation

    .line 82
    invoke-static {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->jsonHttpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->showRetryForOAuth()V

    return-void
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->step2PostGist(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->revokeToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->step3EditKey(Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;)V

    return-void
.end method

.method private static jsonHttpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 609
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x1

    .line 610
    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 611
    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/16 v0, 0xbb8

    .line 612
    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x1388

    .line 613
    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    .line 614
    invoke-virtual {v3, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    .line 615
    invoke-virtual {v3, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v1, "OpenKeychain 5.2"

    .line 616
    invoke-virtual {v3, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_0

    const-string v0, "Authorization"

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 625
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 626
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, v5, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 627
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 629
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 630
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 632
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc9

    if-eq v4, v5, :cond_1

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    .line 634
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 637
    :cond_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 638
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 649
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-object v5

    :catch_0
    move-exception v4

    .line 651
    :try_start_2
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 645
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 655
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 656
    throw v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->jsonHttpRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;
    .locals 4

    .line 102
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;-><init>()V

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 149
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    iput-wide v0, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mMasterKeyId:J

    .line 150
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mFingerprint:[B

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private revokeToken(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 357
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$3;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 374
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->revokeToken(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showRetryForOAuth()V
    .locals 5

    move-object/16 v2, p0

    .line 164
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mRetryButton:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$4;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mButtonContainer:Landroid/widget/ViewAnimator;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->showRetryForOAuth()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private step1GetOAuthCode()V
    .locals 7

    move-object/16 v4, p0

    .line 154
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->AUTH_PROCESS:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->setState(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;)V

    .line 156
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mButtonContainer:Landroid/widget/ViewAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$3;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->step1GetOAuthCode()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private step1GetOAuthToken()V
    .locals 5

    move-object/16 v2, p0

    .line 174
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mOAuthCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 175
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->AUTH_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->setState(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;)V

    .line 176
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->showRetryForOAuth()V

    return-void

    .line 180
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 185
    :cond_1
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mFingerprint:[B

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;->generate(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 248
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->step1GetOAuthToken()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private step2PostGist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 254
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->POST_PROCESS:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->setState(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;)V

    .line 256
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;

    invoke-direct {v0, v1, v3, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 351
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->step2PostGist(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private step3EditKey(Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 382
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 383
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mLinkedIdTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mLinkedIdComment:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;->getDisplayComment(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->LID_PROCESS:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->setState(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;)V

    .line 389
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$5;

    invoke-direct {v1, v4, v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$5;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->step3EditKey(Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$LinkedIdCreateGithubFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    return-void
.end method

.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->createOperationInput()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
    .locals 4

    move-object/16 v1, p0

    .line 402
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->build()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$oAuthRequest$7$LinkedIdCreateGithubFragment(Landroid/content/DialogInterface;)V
    .locals 0

    .line 551
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->step1GetOAuthToken()V

    return-void
.end method

.method final synthetic lambda$onCreateView$0$LinkedIdCreateGithubFragment(Landroid/view/View;)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 128
    invoke-virtual {p1, v0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->loadFragment(Landroid/support/v4/app/Fragment;I)V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$LinkedIdCreateGithubFragment(Landroid/view/View;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->step1GetOAuthCode()V

    return-void
.end method

.method final synthetic lambda$onCryptoOperationCancelled$6$LinkedIdCreateGithubFragment(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 487
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mButtonContainer:Landroid/widget/ViewAnimator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 489
    sget-object p1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->LID_PROCESS:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->setState(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;)V

    .line 490
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->cryptoOperation()V

    return-void
.end method

.method final synthetic lambda$onCryptoOperationSuccess$5$LinkedIdCreateGithubFragment()V
    .locals 5

    .line 414
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 415
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mMasterKeyId:J

    invoke-static {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getViewKeyActivityIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 418
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const-string v2, "linked_transition"

    const/4 v3, 0x1

    .line 419
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    iget-object v2, p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mButtonContainer:Landroid/widget/ViewAnimator;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 423
    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    .line 422
    invoke-static {v0, v2, v4}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v2

    .line 423
    invoke-virtual {v2}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 424
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 425
    iput-boolean v3, p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mFinishOnStop:Z

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 428
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method final synthetic lambda$showRetryForOAuth$3$LinkedIdCreateGithubFragment(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->step1GetOAuthCode()V

    return-void
.end method

.method final synthetic lambda$step1GetOAuthCode$2$LinkedIdCreateGithubFragment()V
    .locals 3

    const-string v0, "github.com/login/oauth/authorize"

    const-string v1, "c942cd81844d94e7e41b"

    const-string v2, "gist"

    .line 159
    invoke-virtual {p0, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->oAuthRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$step3EditKey$4$LinkedIdCreateGithubFragment(Lorg/sufficientlysecure/keychain/linked/resources/GithubResource;)V
    .locals 3

    .line 390
    invoke-static {p1}, Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;->fromResource(Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;)Lorg/sufficientlysecure/keychain/linked/UriAttribute;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/linked/UriAttribute;->toUserAttribute()Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    move-result-object p1

    .line 391
    iget-wide v0, p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mMasterKeyId:J

    iget-object v2, p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mFingerprint:[B

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->buildChangeKeyringParcel(J[B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 392
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v0, p1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserAttribute(Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;)V

    .line 393
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->cryptoOperation()V

    return-void
.end method

.method public oAuthRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move-object/16 p0, p3

    .line 500
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x10

    .line 505
    new-array v1, v1, [B

    .line 506
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 507
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v5, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mOAuthState:Ljava/lang/String;

    const/4 v1, 0x0

    .line 508
    iput-object v1, v5, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mOAuthCode:Ljava/lang/String;

    .line 510
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c00d2

    .line 511
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f09038c

    .line 512
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 513
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 514
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 515
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v4, "OpenKeychain 5.2"

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 516
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$4;

    invoke-direct {v2, v5, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$4;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const v2, 0x7f110963

    .line 549
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 550
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 551
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$8;

    invoke-direct {v2, v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$8;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 552
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?client_id="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&scope="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&redirect_uri=oauth-openkeychain://linked/&state="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mOAuthState:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->oAuthRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 142
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v2

    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    invoke-virtual {v2, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    .line 145
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$2;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)V

    invoke-virtual {v2, v1, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c009b

    const/4 v0, 0x0

    .line 111
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09007e

    .line 113
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewAnimator;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mButtonContainer:Landroid/widget/ViewAnimator;

    const v3, 0x7f0901d8

    .line 115
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus1:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    const v3, 0x7f0901d9

    .line 116
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus2:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    const v3, 0x7f0901da

    .line 117
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus3:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    const v3, 0x7f090098

    .line 119
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mRetryButton:Landroid/widget/Button;

    const v3, 0x7f0901d7

    .line 121
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const p0, 0x7f0800f9

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x7f0901d3

    .line 122
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const p0, 0x7f080119

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x7f0901d6

    .line 123
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mLinkedIdTitle:Landroid/widget/TextView;

    const v3, 0x7f0901d5

    .line 124
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mLinkedIdComment:Landroid/widget/TextView;

    const v3, 0x7f09005e

    .line 126
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$0;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f09009d

    .line 131
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$1;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 5

    move-object/16 v2, p0

    .line 486
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mRetryButton:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$7;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$7;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mButtonContainer:Landroid/widget/ViewAnimator;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 493
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->LID_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->setState(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->onCryptoOperationCancelled()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 480
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    .line 481
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->LID_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->setState(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 82
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 408
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->DONE:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->setState(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;)V

    .line 410
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mButtonContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {v4}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    const-wide/16 v0, 0x2ee

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 411
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mButtonContainer:Landroid/widget/ViewAnimator;

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 413
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$6;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$$Lambda$6;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 82
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    move-object/16 v1, p0

    .line 456
    invoke-super {v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onDestroyView()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->onDestroyView()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 435
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v1, "https://github.com/"

    .line 439
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "github_cookie"

    .line 440
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 5

    move-object/16 v2, p0

    .line 469
    invoke-super {v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onStop()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->onStop()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mFinishOnStop:Z

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    .line 473
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 474
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 445
    invoke-super {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    const-string v2, "github_cookie"

    .line 448
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const-string v0, "https://github.com/"

    .line 450
    invoke-virtual {v3, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setState(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 563
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$5;->$SwitchMap$org$sufficientlysecure$keychain$ui$linked$LinkedIdCreateGithubFragment$State:[I

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->ordinal()I

    move-result v2

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 600
    :pswitch_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus1:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->OK:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 601
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus2:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->OK:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 602
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus3:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->OK:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    goto/16 :goto_0

    .line 595
    :pswitch_1
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus1:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->OK:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 596
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus2:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->OK:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 597
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus3:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->ERROR:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    goto/16 :goto_0

    .line 590
    :pswitch_2
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus1:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->OK:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 591
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus2:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->OK:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 592
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus3:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->PROGRESS:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    goto :goto_0

    .line 585
    :pswitch_3
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus1:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->OK:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 586
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus2:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->ERROR:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 587
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus3:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->IDLE:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    goto :goto_0

    .line 580
    :pswitch_4
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus1:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->OK:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 581
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus2:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->PROGRESS:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 582
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus3:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->IDLE:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    goto :goto_0

    .line 575
    :pswitch_5
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus1:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->ERROR:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 576
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus2:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->IDLE:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 577
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus3:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->IDLE:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    goto :goto_0

    .line 570
    :pswitch_6
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus1:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->PROGRESS:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 571
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus2:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->IDLE:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 572
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus3:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->IDLE:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    goto :goto_0

    .line 565
    :pswitch_7
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus1:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->IDLE:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 566
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus2:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->IDLE:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    .line 567
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->mStatus3:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->IDLE:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;--->setState(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
