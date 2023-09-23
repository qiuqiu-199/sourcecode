.class Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$1;
.super Landroid/database/MatrixCursor;
.source "MultiUserIdsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->onUserIdsLoaded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;[Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 112
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;[Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 115
    invoke-super {v0, v1}, Landroid/database/MatrixCursor;->getBlob(I)[B

    move-result-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$1;--->getBlob(I)[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
