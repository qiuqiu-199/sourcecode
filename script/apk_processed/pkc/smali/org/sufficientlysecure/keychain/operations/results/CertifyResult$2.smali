.class Lorg/sufficientlysecure/keychain/operations/results/CertifyResult$2;
.super Ljava/lang/Object;
.source "CertifyResult.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;Landroid/app/Activity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 128
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult$2;->this$0:Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/CertifyResult$2;---><init>(Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;Landroid/app/Activity;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAction()V
    .locals 6

    move-object/16 v3, p0

    .line 131
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult$2;->val$activity:Landroid/app/Activity;

    const-class v2, Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "log"

    .line 133
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult$2;->this$0:Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/operations/results/CertifyResult$2;--->onAction()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
