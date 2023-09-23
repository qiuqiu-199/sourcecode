.class public Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;
.super Ljava/lang/Object;
.source "KeybaseUrlConnectionClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field private final code:I

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->stream:Ljava/io/InputStream;

    .line 47
    iput p2, p0, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->code:I

    .line 48
    iput-object p3, p0, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->message:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->code:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;->stream:Ljava/io/InputStream;

    return-object v0
.end method
