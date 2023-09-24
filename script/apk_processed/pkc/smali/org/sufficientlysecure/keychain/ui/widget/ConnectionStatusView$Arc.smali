.class Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;
.super Ljava/lang/Object;
.source "ConnectionStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Arc"
.end annotation


# instance fields
.field private final oval:Landroid/graphics/RectF;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 181
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;->paint:Landroid/graphics/Paint;

    .line 183
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;->oval:Landroid/graphics/RectF;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;---><init>(Landroid/graphics/Paint;Landroid/graphics/RectF;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;)Landroid/graphics/RectF;
    .locals 0

    .line 177
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;->oval:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;)Landroid/graphics/Paint;
    .locals 0

    .line 177
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;->paint:Landroid/graphics/Paint;

    return-object p0
.end method
