.class public Lcom/cocosw/bottomsheet/BottomSheet$Builder;
.super Ljava/lang/Object;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocosw/bottomsheet/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private grid:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private limit:I

.field private listener:Landroid/content/DialogInterface$OnClickListener;

.field private final menu:Lcom/cocosw/bottomsheet/ActionMenu;

.field private menulistener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private theme:I

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 501
    sget v0, Lcom/cocosw/bottomsheet/R$style;->BottomSheet_Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;-><init>(Landroid/content/Context;I)V

    .line 502
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lcom/cocosw/bottomsheet/R$attr;->bs_bottomSheetStyle:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 504
    :try_start_0
    sget v0, Lcom/cocosw/bottomsheet/R$style;->BottomSheet_Dialog:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->theme:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 491
    iput v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->limit:I

    .line 517
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    .line 518
    iput p2, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->theme:I

    .line 519
    new-instance p2, Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-direct {p2, p1}, Lcom/cocosw/bottomsheet/ActionMenu;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->menu:Lcom/cocosw/bottomsheet/ActionMenu;

    return-void
.end method

.method static synthetic access$1000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Lcom/cocosw/bottomsheet/ActionMenu;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->menu:Lcom/cocosw/bottomsheet/ActionMenu;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->menulistener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Z
    .locals 0

    .line 481
    iget-boolean p0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->grid:Z

    return p0
.end method

.method static synthetic access$900(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)I
    .locals 0

    .line 481
    iget p0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->limit:I

    return p0
.end method


# virtual methods
.method public build()Lcom/cocosw/bottomsheet/BottomSheet;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .line 708
    new-instance v0, Lcom/cocosw/bottomsheet/BottomSheet;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    iget v2, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->theme:I

    invoke-direct {v0, v1, v2}, Lcom/cocosw/bottomsheet/BottomSheet;-><init>(Landroid/content/Context;I)V

    .line 709
    invoke-static {v0, p0}, Lcom/cocosw/bottomsheet/BottomSheet;->access$402(Lcom/cocosw/bottomsheet/BottomSheet;Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    return-object v0
.end method

.method public darkTheme()Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 662
    sget v0, Lcom/cocosw/bottomsheet/R$style;->BottomSheet_Dialog_Dark:I

    iput v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->theme:I

    return-object p0
.end method

.method public grid()Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 684
    iput-boolean v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->grid:Z

    return-object p0
.end method

.method public icon(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 629
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public icon(Landroid/graphics/drawable/Drawable;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public limit(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntegerRes;
        .end annotation
    .end param

    .line 696
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->limit:I

    return-object p0
.end method

.method public listener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 640
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public listener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 0
    .param p1    # Landroid/view/MenuItem$OnMenuItemClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 651
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->menulistener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public remove(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->menu:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v0, p1}, Lcom/cocosw/bottomsheet/ActionMenu;->removeItem(I)V

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 731
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public sheet(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .line 529
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->menu:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-object p0
.end method

.method public sheet(II)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 572
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->menu:Lcom/cocosw/bottomsheet/ActionMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Lcom/cocosw/bottomsheet/ActionMenu;->add(IIII)Landroid/view/MenuItem;

    return-object p0
.end method

.method public sheet(III)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 8
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 543
    new-instance v7, Lcom/cocosw/bottomsheet/ActionMenuItem;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/cocosw/bottomsheet/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 544
    invoke-virtual {v7, p2}, Lcom/cocosw/bottomsheet/ActionMenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 545
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->menu:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {p1, v7}, Lcom/cocosw/bottomsheet/ActionMenu;->add(Lcom/cocosw/bottomsheet/ActionMenuItem;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public sheet(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 8
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 558
    new-instance v7, Lcom/cocosw/bottomsheet/ActionMenuItem;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move v3, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/cocosw/bottomsheet/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 559
    invoke-virtual {v7, p2}, Lcom/cocosw/bottomsheet/ActionMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 560
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->menu:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {p1, v7}, Lcom/cocosw/bottomsheet/ActionMenu;->add(Lcom/cocosw/bottomsheet/ActionMenuItem;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public sheet(ILjava/lang/CharSequence;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 584
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->menu:Lcom/cocosw/bottomsheet/ActionMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Lcom/cocosw/bottomsheet/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public show()Lcom/cocosw/bottomsheet/BottomSheet;
    .locals 1

    .line 673
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->build()Lcom/cocosw/bottomsheet/BottomSheet;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/BottomSheet;->show()V

    return-object v0
.end method

.method public title(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 595
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public title(Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method
