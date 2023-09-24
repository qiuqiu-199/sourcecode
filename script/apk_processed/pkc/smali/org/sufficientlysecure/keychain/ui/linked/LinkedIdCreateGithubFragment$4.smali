.class Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$4;
.super Landroid/webkit/WebViewClient;
.source "LinkedIdCreateGithubFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->oAuthRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

.field final synthetic val$auth_dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Landroid/app/Dialog;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 516
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$4;->val$auth_dialog:Landroid/app/Dialog;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$4;---><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Landroid/app/Dialog;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 520
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "oauth-openkeychain"

    .line 521
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v5, :cond_2

    .line 523
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    return v1

    :cond_0
    const-string v5, "error"

    .line 527
    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got oauth error: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "error"

    invoke-virtual {v4, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$4;->val$auth_dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    return v1

    .line 534
    :cond_1
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    const-string v0, "code"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->access$002(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$4;->val$auth_dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    return v1

    :cond_2
    const-string v5, "github.com"

    .line 540
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 541
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$4;->val$auth_dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    return v1

    :cond_3
    return v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$4;--->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
