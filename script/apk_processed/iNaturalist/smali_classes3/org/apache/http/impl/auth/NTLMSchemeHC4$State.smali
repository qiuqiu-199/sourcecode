.class final enum Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;
.super Ljava/lang/Enum;
.source "NTLMSchemeHC4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMSchemeHC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

.field public static final enum CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

.field public static final enum FAILED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

.field public static final enum MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

.field public static final enum MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

.field public static final enum MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

.field public static final enum UNINITIATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    new-instance v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const-string v1, "UNINITIATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->UNINITIATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    .line 53
    new-instance v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const-string v1, "CHALLENGE_RECEIVED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    .line 54
    new-instance v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const-string v1, "MSG_TYPE1_GENERATED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    .line 55
    new-instance v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const-string v1, "MSG_TYPE2_RECEVIED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    .line 56
    new-instance v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const-string v1, "MSG_TYPE3_GENERATED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    .line 57
    new-instance v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const-string v1, "FAILED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->FAILED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const/4 v0, 0x6

    .line 51
    new-array v0, v0, [Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    sget-object v1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->UNINITIATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->FAILED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    aput-object v1, v0, v7

    sput-object v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->$VALUES:[Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;
    .locals 1

    .line 51
    const-class v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    return-object p0
.end method

.method public static values()[Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->$VALUES:[Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    invoke-virtual {v0}, [Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    return-object v0
.end method
