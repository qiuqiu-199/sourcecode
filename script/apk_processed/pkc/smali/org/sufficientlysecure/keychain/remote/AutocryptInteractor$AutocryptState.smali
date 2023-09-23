.class public final enum Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;
.super Ljava/lang/Enum;
.source "AutocryptInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutocryptState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

.field public static final enum AVAILABLE:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

.field public static final enum DISABLE:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

.field public static final enum DISCOURAGED_GOSSIP:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

.field public static final enum DISCOURAGED_OLD:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

.field public static final enum MUTUAL:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 245
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    const-string v1, "DISABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->DISABLE:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    new-instance v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    const-string v1, "DISCOURAGED_OLD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->DISCOURAGED_OLD:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    new-instance v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    const-string v1, "DISCOURAGED_GOSSIP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->DISCOURAGED_GOSSIP:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    new-instance v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    const-string v1, "AVAILABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->AVAILABLE:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    new-instance v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    const-string v1, "MUTUAL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->MUTUAL:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    const/4 v0, 0x5

    .line 244
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->DISABLE:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->DISCOURAGED_OLD:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->DISCOURAGED_GOSSIP:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->AVAILABLE:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->MUTUAL:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    aput-object v1, v0, v6

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->$VALUES:[Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    return-void

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;---><clinit>()V"

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

    .line 244
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;
    .locals 4

    move-object/16 v1, p0

    .line 244
    const-class v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;
    .locals 4

    .line 244
    sget-object v0, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->$VALUES:[Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;--->values()[Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor$AutocryptState;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
