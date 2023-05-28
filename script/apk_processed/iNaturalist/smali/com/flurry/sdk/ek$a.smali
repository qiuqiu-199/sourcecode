.class public final enum Lcom/flurry/sdk/ek$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/ek$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ek$a;

.field public static final enum b:Lcom/flurry/sdk/ek$a;

.field public static final enum c:Lcom/flurry/sdk/ek$a;

.field public static final enum d:Lcom/flurry/sdk/ek$a;

.field public static final enum e:Lcom/flurry/sdk/ek$a;

.field public static final enum f:Lcom/flurry/sdk/ek$a;

.field private static final synthetic g:[Lcom/flurry/sdk/ek$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 82
    new-instance v0, Lcom/flurry/sdk/ek$a;

    const-string v1, "kUnknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ek$a;->a:Lcom/flurry/sdk/ek$a;

    .line 83
    new-instance v0, Lcom/flurry/sdk/ek$a;

    const-string v1, "kGet"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    .line 84
    new-instance v0, Lcom/flurry/sdk/ek$a;

    const-string v1, "kPost"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    .line 85
    new-instance v0, Lcom/flurry/sdk/ek$a;

    const-string v1, "kPut"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ek$a;->d:Lcom/flurry/sdk/ek$a;

    .line 86
    new-instance v0, Lcom/flurry/sdk/ek$a;

    const-string v1, "kDelete"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ek$a;->e:Lcom/flurry/sdk/ek$a;

    .line 87
    new-instance v0, Lcom/flurry/sdk/ek$a;

    const-string v1, "kHead"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ek$a;->f:Lcom/flurry/sdk/ek$a;

    const/4 v0, 0x6

    .line 81
    new-array v0, v0, [Lcom/flurry/sdk/ek$a;

    sget-object v1, Lcom/flurry/sdk/ek$a;->a:Lcom/flurry/sdk/ek$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ek$a;->d:Lcom/flurry/sdk/ek$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/ek$a;->e:Lcom/flurry/sdk/ek$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/ek$a;->f:Lcom/flurry/sdk/ek$a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/flurry/sdk/ek$a;->g:[Lcom/flurry/sdk/ek$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ek$a;
    .locals 1

    .line 81
    const-class v0, Lcom/flurry/sdk/ek$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/ek$a;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/ek$a;
    .locals 1

    .line 81
    sget-object v0, Lcom/flurry/sdk/ek$a;->g:[Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ek$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ek$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 2

    .line 112
    sget-object v0, Lcom/flurry/sdk/ek$3;->a:[I

    invoke-virtual {p0}, Lcom/flurry/sdk/ek$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 126
    :pswitch_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 123
    :pswitch_1
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 120
    :pswitch_2
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 117
    :pswitch_3
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 114
    :pswitch_4
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    sget-object v0, Lcom/flurry/sdk/ek$3;->a:[I

    invoke-virtual {p0}, Lcom/flurry/sdk/ek$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "GET"

    return-object v0

    :pswitch_1
    const-string v0, "HEAD"

    return-object v0

    :pswitch_2
    const-string v0, "DELETE"

    return-object v0

    :pswitch_3
    const-string v0, "PUT"

    return-object v0

    :pswitch_4
    const-string v0, "POST"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
