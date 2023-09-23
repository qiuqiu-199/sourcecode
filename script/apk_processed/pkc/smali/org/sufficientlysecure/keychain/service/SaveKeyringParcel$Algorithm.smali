.class public final enum Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;
.super Ljava/lang/Enum;
.source "SaveKeyringParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

.field public static final enum DSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

.field public static final enum ECDH:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

.field public static final enum ECDSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

.field public static final enum EDDSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

.field public static final enum ELGAMAL:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

.field public static final enum RSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 292
    new-instance v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    const-string v1, "RSA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->RSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    const-string v1, "DSA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->DSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    const-string v1, "ELGAMAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ELGAMAL:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    const-string v1, "ECDSA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ECDSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    const-string v1, "ECDH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ECDH:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    const-string v1, "EDDSA"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->EDDSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    const/4 v0, 0x6

    .line 291
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->RSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->DSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ELGAMAL:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ECDSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ECDH:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->EDDSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    aput-object v1, v0, v7

    sput-object v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->$VALUES:[Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    return-void

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;---><clinit>()V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 291
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;
    .locals 4

    move-object/16 v1, p0

    .line 291
    const-class v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;
    .locals 4

    .line 291
    sget-object v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->$VALUES:[Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;--->values()[Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
