.class public Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;
.super Landroid/support/v4/app/Fragment;
.source "LinkedIdSelectFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 31
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;
    .locals 4

    .line 33
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;-><init>()V

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$onCreateView$0$LinkedIdSelectFragment(Landroid/view/View;)V
    .locals 2

    .line 41
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->loadFragment(Landroid/support/v4/app/Fragment;I)V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$LinkedIdSelectFragment(Landroid/view/View;)V
    .locals 2

    .line 46
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->loadFragment(Landroid/support/v4/app/Fragment;I)V

    return-void
.end method

.method final synthetic lambda$onCreateView$2$LinkedIdSelectFragment(Landroid/view/View;)V
    .locals 2

    .line 51
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->loadFragment(Landroid/support/v4/app/Fragment;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c00a3

    const/4 v0, 0x0

    .line 38
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901ce

    .line 40
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment$$Lambda$0;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0901d0

    .line 45
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment$$Lambda$1;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0901cd

    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment$$Lambda$2;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
