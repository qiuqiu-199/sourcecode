.class public Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralMsgIdException;
.super Ljava/lang/Exception;
.source "PgpGeneralMsgIdException.java"


# static fields
.field static final serialVersionUID:J = 0xf812773343L


# instance fields
.field private final mMessageId:I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    iput v3, v2, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralMsgIdException;->mMessageId:I

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralMsgIdException;---><init>(I)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    iput v3, v2, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralMsgIdException;->mMessageId:I

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralMsgIdException;---><init>(ILjava/lang/Throwable;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getContextualized(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 38
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;

    iget v1, v2, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralMsgIdException;->mMessageId:I

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralMsgIdException;--->getContextualized(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
