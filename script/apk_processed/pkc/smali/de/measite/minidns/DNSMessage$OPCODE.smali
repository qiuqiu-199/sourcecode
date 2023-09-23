.class public final enum Lde/measite/minidns/DNSMessage$OPCODE;
.super Ljava/lang/Enum;
.source "DNSMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/measite/minidns/DNSMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OPCODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/measite/minidns/DNSMessage$OPCODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/measite/minidns/DNSMessage$OPCODE;

.field private static final INVERSE_LUT:[Lde/measite/minidns/DNSMessage$OPCODE;

.field public static final enum INVERSE_QUERY:Lde/measite/minidns/DNSMessage$OPCODE;

.field public static final enum NOTIFY:Lde/measite/minidns/DNSMessage$OPCODE;

.field public static final enum QUERY:Lde/measite/minidns/DNSMessage$OPCODE;

.field public static final enum STATUS:Lde/measite/minidns/DNSMessage$OPCODE;

.field public static final enum UPDATE:Lde/measite/minidns/DNSMessage$OPCODE;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 77
    new-instance v0, Lde/measite/minidns/DNSMessage$OPCODE;

    const-string v1, "QUERY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lde/measite/minidns/DNSMessage$OPCODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$OPCODE;->QUERY:Lde/measite/minidns/DNSMessage$OPCODE;

    .line 78
    new-instance v0, Lde/measite/minidns/DNSMessage$OPCODE;

    const-string v1, "INVERSE_QUERY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lde/measite/minidns/DNSMessage$OPCODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$OPCODE;->INVERSE_QUERY:Lde/measite/minidns/DNSMessage$OPCODE;

    .line 79
    new-instance v0, Lde/measite/minidns/DNSMessage$OPCODE;

    const-string v1, "STATUS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lde/measite/minidns/DNSMessage$OPCODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$OPCODE;->STATUS:Lde/measite/minidns/DNSMessage$OPCODE;

    .line 80
    new-instance v0, Lde/measite/minidns/DNSMessage$OPCODE;

    const-string v1, "NOTIFY"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lde/measite/minidns/DNSMessage$OPCODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$OPCODE;->NOTIFY:Lde/measite/minidns/DNSMessage$OPCODE;

    .line 81
    new-instance v0, Lde/measite/minidns/DNSMessage$OPCODE;

    const-string v1, "UPDATE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lde/measite/minidns/DNSMessage$OPCODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/measite/minidns/DNSMessage$OPCODE;->UPDATE:Lde/measite/minidns/DNSMessage$OPCODE;

    .line 76
    new-array v0, v7, [Lde/measite/minidns/DNSMessage$OPCODE;

    sget-object v1, Lde/measite/minidns/DNSMessage$OPCODE;->QUERY:Lde/measite/minidns/DNSMessage$OPCODE;

    aput-object v1, v0, v2

    sget-object v1, Lde/measite/minidns/DNSMessage$OPCODE;->INVERSE_QUERY:Lde/measite/minidns/DNSMessage$OPCODE;

    aput-object v1, v0, v3

    sget-object v1, Lde/measite/minidns/DNSMessage$OPCODE;->STATUS:Lde/measite/minidns/DNSMessage$OPCODE;

    aput-object v1, v0, v4

    sget-object v1, Lde/measite/minidns/DNSMessage$OPCODE;->NOTIFY:Lde/measite/minidns/DNSMessage$OPCODE;

    aput-object v1, v0, v5

    sget-object v1, Lde/measite/minidns/DNSMessage$OPCODE;->UPDATE:Lde/measite/minidns/DNSMessage$OPCODE;

    aput-object v1, v0, v6

    sput-object v0, Lde/measite/minidns/DNSMessage$OPCODE;->$VALUES:[Lde/measite/minidns/DNSMessage$OPCODE;

    const/16 v0, 0xf

    .line 86
    new-array v0, v0, [Lde/measite/minidns/DNSMessage$OPCODE;

    sget-object v1, Lde/measite/minidns/DNSMessage$OPCODE;->QUERY:Lde/measite/minidns/DNSMessage$OPCODE;

    aput-object v1, v0, v2

    sget-object v1, Lde/measite/minidns/DNSMessage$OPCODE;->INVERSE_QUERY:Lde/measite/minidns/DNSMessage$OPCODE;

    aput-object v1, v0, v3

    sget-object v1, Lde/measite/minidns/DNSMessage$OPCODE;->STATUS:Lde/measite/minidns/DNSMessage$OPCODE;

    aput-object v1, v0, v4

    const/4 v1, 0x0

    aput-object v1, v0, v5

    sget-object v2, Lde/measite/minidns/DNSMessage$OPCODE;->NOTIFY:Lde/measite/minidns/DNSMessage$OPCODE;

    aput-object v2, v0, v6

    sget-object v2, Lde/measite/minidns/DNSMessage$OPCODE;->UPDATE:Lde/measite/minidns/DNSMessage$OPCODE;

    aput-object v2, v0, v7

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lde/measite/minidns/DNSMessage$OPCODE;->INVERSE_LUT:[Lde/measite/minidns/DNSMessage$OPCODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    .line 101
    iput-byte p1, p0, Lde/measite/minidns/DNSMessage$OPCODE;->value:B

    return-void
.end method

.method public static getOpcode(I)Lde/measite/minidns/DNSMessage$OPCODE;
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0xf

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    sget-object v0, Lde/measite/minidns/DNSMessage$OPCODE;->INVERSE_LUT:[Lde/measite/minidns/DNSMessage$OPCODE;

    aget-object p0, v0, p0

    return-object p0

    .line 121
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/measite/minidns/DNSMessage$OPCODE;
    .locals 1

    .line 76
    const-class v0, Lde/measite/minidns/DNSMessage$OPCODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/measite/minidns/DNSMessage$OPCODE;

    return-object p0
.end method

.method public static values()[Lde/measite/minidns/DNSMessage$OPCODE;
    .locals 1

    .line 76
    sget-object v0, Lde/measite/minidns/DNSMessage$OPCODE;->$VALUES:[Lde/measite/minidns/DNSMessage$OPCODE;

    invoke-virtual {v0}, [Lde/measite/minidns/DNSMessage$OPCODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/measite/minidns/DNSMessage$OPCODE;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .line 109
    iget-byte v0, p0, Lde/measite/minidns/DNSMessage$OPCODE;->value:B

    return v0
.end method
