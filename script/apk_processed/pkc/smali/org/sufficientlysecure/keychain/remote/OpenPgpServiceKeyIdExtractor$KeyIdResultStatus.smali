.class final enum Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;
.super Ljava/lang/Enum;
.source "OpenPgpServiceKeyIdExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KeyIdResultStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

.field public static final enum DUPLICATE:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

.field public static final enum MISSING:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

.field public static final enum NO_KEYS:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

.field public static final enum NO_KEYS_ERROR:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

.field public static final enum OK:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 321
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->OK:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    new-instance v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    const-string v1, "MISSING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->MISSING:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    new-instance v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    const-string v1, "DUPLICATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->DUPLICATE:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    new-instance v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    const-string v1, "NO_KEYS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->NO_KEYS:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    new-instance v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    const-string v1, "NO_KEYS_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->NO_KEYS_ERROR:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    const/4 v0, 0x5

    .line 320
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->OK:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->MISSING:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->DUPLICATE:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->NO_KEYS:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->NO_KEYS_ERROR:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    aput-object v1, v0, v6

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->$VALUES:[Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    return-void

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;---><clinit>()V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 320
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;
    .locals 4

    move-object/16 v1, p0

    .line 320
    const-class v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;
    .locals 4

    .line 320
    sget-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->$VALUES:[Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;--->values()[Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
