.class public Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferNotAvailableFragment;
.super Landroid/support/v4/app/Fragment;
.source "TransferNotAvailableFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 31
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferNotAvailableFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c0103

    const/4 v0, 0x0

    .line 34
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferNotAvailableFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
