.class public final enum Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;
.super Ljava/lang/Enum;
.source "BmpHeaderDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/bmp/BmpHeaderDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderingHalftoningAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

.field public static final enum ERROR_DIFFUSION:Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

.field public static final enum NONE:Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

.field public static final enum PANDA:Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

.field public static final enum SUPER_CIRCLE:Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 305
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->NONE:Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    .line 308
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    const-string v1, "ERROR_DIFFUSION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->ERROR_DIFFUSION:Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    .line 311
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    const-string v1, "PANDA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->PANDA:Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    .line 314
    new-instance v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    const-string v1, "SUPER_CIRCLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->SUPER_CIRCLE:Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    const/4 v0, 0x4

    .line 302
    new-array v0, v0, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->NONE:Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->ERROR_DIFFUSION:Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->PANDA:Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->SUPER_CIRCLE:Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    aput-object v1, v0, v5

    sput-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->$VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 318
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 319
    iput p3, p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->value:I

    return-void
.end method

.method public static typeOf(I)Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 328
    invoke-static {}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->values()[Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 330
    iget v4, v3, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;
    .locals 1

    .line 302
    const-class v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;
    .locals 1

    .line 302
    sget-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->$VALUES:[Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    invoke-virtual {v0}, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 341
    sget-object v0, Lcom/drew/metadata/bmp/BmpHeaderDirectory$1;->$SwitchMap$com$drew$metadata$bmp$BmpHeaderDirectory$RenderingHalftoningAlgorithm:[I

    invoke-virtual {p0}, Lcom/drew/metadata/bmp/BmpHeaderDirectory$RenderingHalftoningAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplemented rendering halftoning algorithm type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "Super-circle Halftoning"

    return-object v0

    :pswitch_1
    const-string v0, "Processing Algorithm for Noncoded Document Acquisition"

    return-object v0

    :pswitch_2
    const-string v0, "Error Diffusion Halftoning"

    return-object v0

    :pswitch_3
    const-string v0, "No Halftoning Algorithm"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
