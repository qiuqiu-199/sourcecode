.class public final enum Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;
.super Ljava/lang/Enum;
.source "KeyFormattingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

.field public static final enum ENCRYPTED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

.field public static final enum EXPIRED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

.field public static final enum INSECURE:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

.field public static final enum INVALID:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

.field public static final enum NOT_ENCRYPTED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

.field public static final enum NOT_SIGNED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

.field public static final enum REVOKED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

.field public static final enum UNAVAILABLE:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

.field public static final enum UNKNOWN_KEY:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

.field public static final enum UNVERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

.field public static final enum VERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 415
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const-string v1, "REVOKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->REVOKED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    .line 416
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const-string v1, "EXPIRED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    .line 417
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const-string v1, "VERIFIED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->VERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    .line 418
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const-string v1, "UNAVAILABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNAVAILABLE:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    .line 419
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const-string v1, "ENCRYPTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ENCRYPTED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    .line 420
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const-string v1, "NOT_ENCRYPTED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->NOT_ENCRYPTED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    .line 421
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const-string v1, "UNVERIFIED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNVERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    .line 422
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const-string v1, "UNKNOWN_KEY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNKNOWN_KEY:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    .line 423
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const-string v1, "INVALID"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->INVALID:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    .line 424
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const-string v1, "NOT_SIGNED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->NOT_SIGNED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    .line 425
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const-string v1, "INSECURE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->INSECURE:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const/16 v0, 0xb

    .line 414
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->REVOKED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->VERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNAVAILABLE:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ENCRYPTED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->NOT_ENCRYPTED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    aput-object v1, v0, v7

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNVERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    aput-object v1, v0, v8

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNKNOWN_KEY:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    aput-object v1, v0, v9

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->INVALID:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    aput-object v1, v0, v10

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->NOT_SIGNED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    aput-object v1, v0, v11

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->INSECURE:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    aput-object v1, v0, v12

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    return-void

    const-string v13, "M_InsDal"

    const-string v14, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;---><clinit>()V"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 414
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;
    .locals 4

    move-object/16 v1, p0

    .line 414
    const-class v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;
    .locals 4

    .line 414
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;--->values()[Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
