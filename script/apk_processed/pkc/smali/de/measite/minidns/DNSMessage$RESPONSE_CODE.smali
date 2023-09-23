.class public final enum Lde/measite/minidns/DNSMessage$RESPONSE_CODE;
.super Ljava/lang/Enum;
.source "DNSMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/measite/minidns/DNSMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RESPONSE_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/measite/minidns/DNSMessage$RESPONSE_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

.field public static final enum FORMAT_ERR:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

.field private static final INVERSE_LUT:[Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

.field public static final enum NOT_AUTH:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

.field public static final enum NOT_ZONE:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

.field public static final enum NO_ERROR:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

.field public static final enum NO_IMP:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

.field public static final enum NXRRSET:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

.field public static final enum NX_DOMAIN:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

.field public static final enum REFUSED:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

.field public static final enum SERVER_FAIL:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

.field public static final enum YXDOMAIN:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

.field public static final enum YXRRSET:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 23
    new-instance v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NO_ERROR:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    new-instance v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    const-string v1, "FORMAT_ERR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->FORMAT_ERR:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    new-instance v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    const-string v1, "SERVER_FAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->SERVER_FAIL:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    new-instance v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    const-string v1, "NX_DOMAIN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NX_DOMAIN:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    .line 24
    new-instance v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    const-string v1, "NO_IMP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NO_IMP:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    new-instance v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    const-string v1, "REFUSED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->REFUSED:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    new-instance v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    const-string v1, "YXDOMAIN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->YXDOMAIN:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    new-instance v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    const-string v1, "YXRRSET"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->YXRRSET:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    .line 25
    new-instance v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    const-string v1, "NXRRSET"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NXRRSET:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    new-instance v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    const-string v1, "NOT_AUTH"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NOT_AUTH:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    new-instance v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    const-string v1, "NOT_ZONE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NOT_ZONE:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    const/16 v0, 0xb

    .line 22
    new-array v1, v0, [Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    sget-object v13, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NO_ERROR:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v13, v1, v2

    sget-object v13, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->FORMAT_ERR:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v13, v1, v3

    sget-object v13, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->SERVER_FAIL:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v13, v1, v4

    sget-object v13, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NX_DOMAIN:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v13, v1, v5

    sget-object v13, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NO_IMP:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v13, v1, v6

    sget-object v13, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->REFUSED:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v13, v1, v7

    sget-object v13, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->YXDOMAIN:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v13, v1, v8

    sget-object v13, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->YXRRSET:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v13, v1, v9

    sget-object v13, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NXRRSET:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v13, v1, v10

    sget-object v13, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NOT_AUTH:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v13, v1, v11

    sget-object v13, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NOT_ZONE:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v13, v1, v12

    sput-object v1, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->$VALUES:[Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    const/16 v1, 0x10

    .line 30
    new-array v1, v1, [Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    sget-object v13, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NO_ERROR:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v13, v1, v2

    sget-object v2, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->FORMAT_ERR:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v2, v1, v3

    sget-object v2, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->SERVER_FAIL:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v2, v1, v4

    sget-object v2, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NX_DOMAIN:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v2, v1, v5

    sget-object v2, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NO_IMP:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v2, v1, v6

    sget-object v2, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->REFUSED:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v2, v1, v7

    sget-object v2, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->YXDOMAIN:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v2, v1, v8

    sget-object v2, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->YXRRSET:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v2, v1, v9

    sget-object v2, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NXRRSET:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v2, v1, v10

    sget-object v2, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NOT_AUTH:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v2, v1, v11

    sget-object v2, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NOT_ZONE:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aput-object v2, v1, v12

    const/4 v2, 0x0

    aput-object v2, v1, v0

    const/16 v0, 0xc

    aput-object v2, v1, v0

    const/16 v0, 0xd

    aput-object v2, v1, v0

    const/16 v0, 0xe

    aput-object v2, v1, v0

    const/16 v0, 0xf

    aput-object v2, v1, v0

    sput-object v1, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->INVERSE_LUT:[Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    .line 46
    iput-byte p1, p0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->value:B

    return-void
.end method

.method public static getResponseCode(I)Lde/measite/minidns/DNSMessage$RESPONSE_CODE;
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0xf

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->INVERSE_LUT:[Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    aget-object p0, v0, p0

    return-object p0

    .line 66
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/measite/minidns/DNSMessage$RESPONSE_CODE;
    .locals 1

    .line 22
    const-class v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    return-object p0
.end method

.method public static values()[Lde/measite/minidns/DNSMessage$RESPONSE_CODE;
    .locals 1

    .line 22
    sget-object v0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->$VALUES:[Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    invoke-virtual {v0}, [Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .line 54
    iget-byte v0, p0, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->value:B

    return v0
.end method
