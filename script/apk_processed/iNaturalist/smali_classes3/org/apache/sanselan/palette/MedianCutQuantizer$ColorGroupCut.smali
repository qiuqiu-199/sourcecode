.class Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/palette/MedianCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorGroupCut"
.end annotation


# instance fields
.field public final less:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

.field public final limit:I

.field public final mode:I

.field public final more:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

.field private final synthetic this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;II)V
    .locals 0

    .line 467
    iput-object p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->less:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .line 469
    iput-object p3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->more:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .line 470
    iput p4, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->mode:I

    .line 471
    iput p5, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->limit:I

    return-void
.end method


# virtual methods
.method public getColorGroup(I)Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    .locals 1

    .line 477
    iget v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 492
    new-instance p1, Ljava/lang/Error;

    const-string v0, "bad mode."

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    shr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :pswitch_1
    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :pswitch_2
    shr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :pswitch_3
    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 494
    :goto_0
    iget v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->limit:I

    if-gt p1, v0, :cond_0

    .line 495
    iget-object p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->less:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    return-object p1

    .line 496
    :cond_0
    iget-object p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->more:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
