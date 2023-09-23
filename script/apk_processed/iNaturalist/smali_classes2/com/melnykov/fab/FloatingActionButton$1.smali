.class Lcom/melnykov/fab/FloatingActionButton$1;
.super Landroid/view/ViewOutlineProvider;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/melnykov/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/melnykov/fab/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/melnykov/fab/FloatingActionButton;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$1;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$1;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$1;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/melnykov/fab/FloatingActionButton;->access$000(Lcom/melnykov/fab/FloatingActionButton;)I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/melnykov/fab/R$dimen;->fab_size_normal:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/melnykov/fab/R$dimen;->fab_size_mini:I

    :goto_0
    invoke-static {p1, v0}, Lcom/melnykov/fab/FloatingActionButton;->access$100(Lcom/melnykov/fab/FloatingActionButton;I)I

    move-result p1

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p2, v0, v0, p1, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
