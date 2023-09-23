.class public Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;
.super Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;
.source "RSAKeyFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;
    }
.end annotation


# instance fields
.field private mExponentLength:I

.field private mModulusLength:I

.field private mRSAAlgorithmFormat:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;


# direct methods
.method public constructor <init>(IILorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 33
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->RSAKeyFormatType:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;)V

    .line 34
    iput v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->mModulusLength:I

    .line 35
    iput v3, v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->mExponentLength:I

    .line 36
    iput-object p0, v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->mRSAAlgorithmFormat:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;---><init>(IILorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addToSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;I)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    .line 90
    sget-object v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->RSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    iget v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->mModulusLength:I

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    .line 90
    invoke-static {v0, v1, v3, v6, v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->createSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;ILjava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;--->addToSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAlgorithmFormat()Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;
    .locals 4

    move-object/16 v1, p0

    .line 48
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->mRSAAlgorithmFormat:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;--->getAlgorithmFormat()Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getExponentLength()I
    .locals 4

    move-object/16 v1, p0

    .line 44
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->mExponentLength:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;--->getExponentLength()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getModulusLength()I
    .locals 4

    move-object/16 v1, p0

    .line 40
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->mModulusLength:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;--->getModulusLength()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
