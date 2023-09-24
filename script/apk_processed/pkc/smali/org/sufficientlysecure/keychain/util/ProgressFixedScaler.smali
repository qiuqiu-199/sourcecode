.class public Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;
.super Lorg/sufficientlysecure/keychain/util/ProgressScaler;
.source "ProgressFixedScaler.java"


# instance fields
.field final mResId:I


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;IIII)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    .line 30
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;III)V

    .line 31
    iput p2, v0, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mResId:I

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;---><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;IIII)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public setProgress(III)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    move/16 v6, p2

    move/16 p0, p3

    .line 35
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mWrapped:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    if-eqz v5, :cond_0

    .line 36
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mWrapped:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget v0, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mResId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mFrom:I

    iget v2, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mTo:I

    iget v3, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mFrom:I

    sub-int/2addr v2, v3

    mul-int v6, v6, v2

    div-int/2addr v6, p0

    add-int/2addr v1, v6

    iget v6, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mMax:I

    invoke-interface {v5, v0, v1, v6}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(Ljava/lang/Integer;II)V

    :cond_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;--->setProgress(III)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(Ljava/lang/String;II)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    move/16 p0, p3

    .line 41
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mWrapped:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    if-eqz v5, :cond_0

    .line 42
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mWrapped:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget v0, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mResId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mFrom:I

    iget v2, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mTo:I

    iget v3, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mFrom:I

    sub-int/2addr v2, v3

    mul-int v6, v6, v2

    div-int/2addr v6, p0

    add-int/2addr v1, v6

    iget v6, v4, Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;->mMax:I

    invoke-interface {v5, v0, v1, v6}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(Ljava/lang/Integer;II)V

    :cond_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/ProgressFixedScaler;--->setProgress(Ljava/lang/String;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
