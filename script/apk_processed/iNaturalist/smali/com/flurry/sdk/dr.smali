.class public final enum Lcom/flurry/sdk/dr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/dr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/dr;

.field public static final enum b:Lcom/flurry/sdk/dr;

.field public static final enum c:Lcom/flurry/sdk/dr;

.field private static final synthetic f:[Lcom/flurry/sdk/dr;


# instance fields
.field public final d:I

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lcom/flurry/sdk/dr;

    const-string v1, "PhoneId"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/flurry/sdk/dr;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/sdk/dr;->a:Lcom/flurry/sdk/dr;

    .line 6
    new-instance v0, Lcom/flurry/sdk/dr;

    const-string v1, "Sha1Imei"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/flurry/sdk/dr;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/sdk/dr;->b:Lcom/flurry/sdk/dr;

    .line 7
    new-instance v0, Lcom/flurry/sdk/dr;

    const-string v1, "AndroidAdvertisingId"

    const/4 v4, 0x2

    const/16 v5, 0xd

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/flurry/sdk/dr;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/sdk/dr;->c:Lcom/flurry/sdk/dr;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/flurry/sdk/dr;

    sget-object v1, Lcom/flurry/sdk/dr;->a:Lcom/flurry/sdk/dr;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/dr;->b:Lcom/flurry/sdk/dr;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/dr;->c:Lcom/flurry/sdk/dr;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/sdk/dr;->f:[Lcom/flurry/sdk/dr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/flurry/sdk/dr;->d:I

    .line 14
    iput-boolean p4, p0, Lcom/flurry/sdk/dr;->e:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/dr;
    .locals 1

    .line 3
    const-class v0, Lcom/flurry/sdk/dr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/dr;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/dr;
    .locals 1

    .line 3
    sget-object v0, Lcom/flurry/sdk/dr;->f:[Lcom/flurry/sdk/dr;

    invoke-virtual {v0}, [Lcom/flurry/sdk/dr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/dr;

    return-object v0
.end method
