.class public Lorg/sufficientlysecure/keychain/securitytoken/EdDSAKeyFormat;
.super Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;
.source "EdDSAKeyFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 33
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->EdDSAKeyFormatType:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/EdDSAKeyFormat;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addToSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;I)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 38
    sget-object v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->EDDSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    const-wide/16 v1, 0x0

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    .line 38
    invoke-static {v0, v2, v2, v5, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->createSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;ILjava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/EdDSAKeyFormat;--->addToSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
