.class Lorg/apache/sanselan/palette/MedianCutQuantizer$2;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

.field private final synthetic val$mode:I


# direct methods
.method constructor <init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;I)V
    .locals 0

    .line 368
    iput-object p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$2;->this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

    iput p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$2;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 371
    check-cast p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 372
    check-cast p2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 374
    iget v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$2;->val$mode:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 383
    :pswitch_0
    iget p1, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    iget p2, p2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    sub-int/2addr p1, p2

    return p1

    .line 381
    :pswitch_1
    iget p1, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    iget p2, p2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    sub-int/2addr p1, p2

    return p1

    .line 379
    :pswitch_2
    iget p1, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    iget p2, p2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    sub-int/2addr p1, p2

    return p1

    .line 377
    :pswitch_3
    iget p1, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    iget p2, p2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    sub-int/2addr p1, p2

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
