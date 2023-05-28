.class Lorg/apache/sanselan/palette/MedianCutQuantizer$1;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;


# direct methods
.method constructor <init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$1;->this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 279
    check-cast p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .line 280
    check-cast p2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .line 282
    iget v0, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    iget v1, p2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    if-ne v0, v1, :cond_0

    .line 283
    iget p2, p2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->diff_total:I

    iget p1, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->diff_total:I

    sub-int/2addr p2, p1

    return p2

    .line 284
    :cond_0
    iget p2, p2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    iget p1, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    sub-int/2addr p2, p1

    return p2
.end method
