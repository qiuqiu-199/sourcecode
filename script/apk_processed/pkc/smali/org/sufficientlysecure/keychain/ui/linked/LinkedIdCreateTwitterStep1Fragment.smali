.class public Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;
.super Landroid/support/v4/app/Fragment;
.source "LinkedIdCreateTwitterStep1Fragment.java"


# instance fields
.field mEditHandle:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 33
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;
    .locals 4

    .line 37
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;-><init>()V

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$onCreateView$0$LinkedIdCreateTwitterStep1Fragment(Landroid/view/View;)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->loadFragment(Landroid/support/v4/app/Fragment;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c009e

    const/4 v0, 0x0

    .line 42
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09024c

    .line 44
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f09005e

    .line 91
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$$Lambda$0;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0901d1

    .line 94
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;->mEditHandle:Landroid/widget/EditText;

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
