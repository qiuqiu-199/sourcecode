.class public Lorg/apache/sanselan/palette/MedianCutQuantizer$MedianCutPalette;
.super Lorg/apache/sanselan/palette/SimplePalette;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/palette/MedianCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MedianCutPalette"
.end annotation


# instance fields
.field private final root:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

.field private final synthetic this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;[I)V
    .locals 0

    .line 506
    iput-object p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$MedianCutPalette;->this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

    .line 507
    invoke-direct {p0, p3}, Lorg/apache/sanselan/palette/SimplePalette;-><init>([I)V

    .line 508
    iput-object p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$MedianCutPalette;->root:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    return-void
.end method


# virtual methods
.method public getPaletteIndex(I)I
    .locals 2

    .line 513
    iget-object v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$MedianCutPalette;->root:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .line 515
    :goto_0
    iget-object v1, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->cut:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;

    if-eqz v1, :cond_0

    .line 517
    iget-object v0, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->cut:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;

    invoke-virtual {v0, p1}, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->getColorGroup(I)Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    move-result-object v0

    goto :goto_0

    .line 522
    :cond_0
    iget p1, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->palette_index:I

    return p1
.end method
