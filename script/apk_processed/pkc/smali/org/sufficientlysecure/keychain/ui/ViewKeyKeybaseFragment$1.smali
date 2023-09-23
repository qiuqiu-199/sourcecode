.class Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;
.super Ljava/lang/Object;
.source "ViewKeyKeybaseFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->startSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

.field final synthetic val$fingerprint:Ljava/lang/String;

.field final synthetic val$parcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 120
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;->val$parcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;->val$fingerprint:Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;--->onCancel()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onNeutralButton()V
    .locals 7

    move-object/16 v4, p0

    .line 128
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-static {}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getForNoProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;->val$fingerprint:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 129
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;--->onNeutralButton()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOrbotStarted()V
    .locals 7

    move-object/16 v4, p0

    .line 123
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;->val$parcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;->val$fingerprint:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$1;--->onOrbotStarted()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
