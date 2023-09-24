.class synthetic Lcom/github/rjeschke/txtmark/Block$1;
.super Ljava/lang/Object;
.source "Block.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rjeschke/txtmark/Block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$rjeschke$txtmark$LineType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    invoke-static {}, Lcom/github/rjeschke/txtmark/LineType;->values()[Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/github/rjeschke/txtmark/Block$1;->$SwitchMap$com$github$rjeschke$txtmark$LineType:[I

    :try_start_0
    sget-object v0, Lcom/github/rjeschke/txtmark/Block$1;->$SwitchMap$com$github$rjeschke$txtmark$LineType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->ULIST:Lcom/github/rjeschke/txtmark/LineType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/LineType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/github/rjeschke/txtmark/Block$1;->$SwitchMap$com$github$rjeschke$txtmark$LineType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/LineType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
