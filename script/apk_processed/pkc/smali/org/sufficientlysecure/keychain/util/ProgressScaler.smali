.class public Lorg/sufficientlysecure/keychain/util/ProgressScaler;
.super Ljava/lang/Object;
.source "ProgressScaler.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/pgp/Progressable;


# instance fields
.field final mFrom:I

.field final mMax:I

.field final mTo:I

.field final mWrapped:Lorg/sufficientlysecure/keychain/pgp/Progressable;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 31
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mWrapped:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    const/4 v0, 0x0

    .line 33
    iput v0, v1, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mMax:I

    iput v0, v1, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mTo:I

    iput v0, v1, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mFrom:I

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/ProgressScaler;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;III)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mWrapped:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    .line 37
    iput v2, v0, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mFrom:I

    .line 38
    iput p0, v0, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mTo:I

    .line 39
    iput p1, v0, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mMax:I

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/util/ProgressScaler;---><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;III)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public setPreventCancel()V
    .locals 4

    move-object/16 v1, p0

    .line 50
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mWrapped:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mWrapped:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setPreventCancel()V

    :cond_0
    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/ProgressScaler;--->setPreventCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(II)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/Progressable$$CC;->setProgress(Lorg/sufficientlysecure/keychain/pgp/Progressable;II)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/ProgressScaler;--->setProgress(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(Ljava/lang/Integer;II)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    move/16 p0, p3

    .line 43
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mWrapped:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mWrapped:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget v1, v4, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mFrom:I

    iget v2, v4, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mTo:I

    iget v3, v4, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mFrom:I

    sub-int/2addr v2, v3

    mul-int v6, v6, v2

    div-int/2addr v6, p0

    add-int/2addr v1, v6

    iget v6, v4, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->mMax:I

    invoke-interface {v0, v5, v1, v6}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(Ljava/lang/Integer;II)V

    :cond_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/ProgressScaler;--->setProgress(Ljava/lang/Integer;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
