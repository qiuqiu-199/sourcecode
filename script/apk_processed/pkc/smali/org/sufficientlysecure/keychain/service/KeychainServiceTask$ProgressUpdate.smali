.class Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;
.super Ljava/lang/Object;
.source "KeychainServiceTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressUpdate"
.end annotation


# instance fields
.field public final current:I

.field public final resourceId:Ljava/lang/Integer;

.field public final total:I


# direct methods
.method constructor <init>(Ljava/lang/Integer;II)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    .line 188
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;->resourceId:Ljava/lang/Integer;

    .line 190
    iput v2, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;->current:I

    .line 191
    iput p0, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;->total:I

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;---><init>(Ljava/lang/Integer;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
