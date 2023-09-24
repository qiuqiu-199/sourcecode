.class Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
.super Ljava/lang/Object;
.source "PaletteFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/palette/PaletteFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DivisionCandidate"
.end annotation


# instance fields
.field private final dst_a:Lorg/apache/sanselan/palette/ColorSpaceSubset;

.field private final dst_b:Lorg/apache/sanselan/palette/ColorSpaceSubset;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/palette/ColorSpaceSubset;Lorg/apache/sanselan/palette/ColorSpaceSubset;Lorg/apache/sanselan/palette/ColorSpaceSubset;)V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p2, p0, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;->dst_a:Lorg/apache/sanselan/palette/ColorSpaceSubset;

    .line 310
    iput-object p3, p0, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;->dst_b:Lorg/apache/sanselan/palette/ColorSpaceSubset;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/sanselan/palette/ColorSpaceSubset;
    .locals 0

    .line 300
    iget-object p0, p0, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;->dst_a:Lorg/apache/sanselan/palette/ColorSpaceSubset;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/sanselan/palette/ColorSpaceSubset;
    .locals 0

    .line 300
    iget-object p0, p0, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;->dst_b:Lorg/apache/sanselan/palette/ColorSpaceSubset;

    return-object p0
.end method
