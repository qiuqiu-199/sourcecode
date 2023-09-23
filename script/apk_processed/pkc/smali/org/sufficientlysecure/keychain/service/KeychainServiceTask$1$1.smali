.class Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1$1;
.super Ljava/lang/Object;
.source "KeychainServiceTask.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/pgp/Progressable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 140
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1$1;->this$1:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1$1;---><init>(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public setPreventCancel()V
    .locals 7

    move-object/16 v4, p0

    .line 143
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1$1;->this$1:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;

    const/4 v2, 0x0

    check-cast v2, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->access$300(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;[Ljava/lang/Object;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1$1;--->setPreventCancel()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(II)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/Progressable$$CC;->setProgress(Lorg/sufficientlysecure/keychain/pgp/Progressable;II)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1$1;--->setProgress(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(Ljava/lang/Integer;II)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    move/16 p0, p3

    .line 148
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1$1;->this$1:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;

    new-instance v2, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;

    invoke-direct {v2, v4, v5, p0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;-><init>(Ljava/lang/Integer;II)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->access$400(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;[Ljava/lang/Object;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1$1;--->setProgress(Ljava/lang/Integer;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
