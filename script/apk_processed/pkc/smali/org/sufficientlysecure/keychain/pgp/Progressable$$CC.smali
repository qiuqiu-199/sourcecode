.class public abstract synthetic Lorg/sufficientlysecure/keychain/pgp/Progressable$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static setProgress(Lorg/sufficientlysecure/keychain/pgp/Progressable;II)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    const/4 v0, 0x0

    .line 23
    invoke-interface {v1, v0, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(Ljava/lang/Integer;II)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/Progressable$$CC;--->setProgress(Lorg/sufficientlysecure/keychain/pgp/Progressable;II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
