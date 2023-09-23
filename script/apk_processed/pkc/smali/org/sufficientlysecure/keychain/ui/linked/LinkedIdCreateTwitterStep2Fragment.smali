.class public Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;
.super Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;
.source "LinkedIdCreateTwitterStep2Fragment.java"


# static fields
.field public static final ARG_HANDLE:Ljava/lang/String; = "handle"


# instance fields
.field mResourceHandle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 38
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getResourceString()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 62
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->fingerprint:[B

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->generate([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;--->getResourceString()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;
    .locals 6

    move-object/16 v3, p0

    .line 45
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "handle"

    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;--->newInstance(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private proofSend()V
    .locals 6

    move-object/16 v3, p0

    const-string v0, "https://twitter.com/intent/tweet"

    .line 98
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "text"

    .line 99
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->getResourceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 100
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;--->proofSend()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private proofShare()V
    .locals 6

    move-object/16 v3, p0

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 92
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->getResourceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;--->proofShare()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method getResource(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 81
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->mResourceHandle:Ljava/lang/String;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->getResourceString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->searchInTwitterStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;--->getResource(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onCreateView$0$LinkedIdCreateTwitterStep2Fragment(Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->proofSend()V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$LinkedIdCreateTwitterStep2Fragment(Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->proofShare()V

    return-void
.end method

.method protected newView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c009f

    const/4 v0, 0x0

    .line 86
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;--->newView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 56
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "handle"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->mResourceHandle:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 68
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f09009d

    .line 70
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment$$Lambda$0;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f09009f

    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment$$Lambda$1;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x1

    .line 73
    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->mResourceHandle:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v3, v0

    const p0, 0x7f11093b

    invoke-virtual {v1, p0, v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev3Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    const p0, 0x7f0901dc

    .line 74
    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2
.end method
