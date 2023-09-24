.class public Lcom/cocosw/bottomsheet/BottomSheetHelper;
.super Ljava/lang/Object;
.source "BottomSheetHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shareAction(Landroid/app/Activity;Landroid/content/Intent;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    new-instance v0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-direct {v0, p0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->grid()Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 42
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 43
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->sheet(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Lcom/cocosw/bottomsheet/BottomSheetHelper$1;

    invoke-direct {v1, v3, p1, p0}, Lcom/cocosw/bottomsheet/BottomSheetHelper$1;-><init>(Ljava/util/List;Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->listener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    .line 59
    sget p0, Lcom/cocosw/bottomsheet/R$integer;->bs_initial_grid_row:I

    invoke-virtual {v0, p0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->limit(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    return-object v0
.end method
