.class Lcom/cocosw/bottomsheet/ActionMenu;
.super Ljava/lang/Object;
.source "ActionMenu.java"

# interfaces
.implements Landroid/view/Menu;


# static fields
.field private static final CATEGORY_MASK:I = -0x10000

.field private static final CATEGORY_SHIFT:I = 0x10

.field private static final USER_MASK:I = 0xffff

.field private static final USER_SHIFT:I

.field private static final sCategoryToOrder:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsQwerty:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cocosw/bottomsheet/ActionMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 33
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cocosw/bottomsheet/ActionMenu;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mContext:Landroid/content/Context;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cocosw/bottomsheet/ActionMenuItem;",
            ">;I)I"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 68
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cocosw/bottomsheet/ActionMenuItem;

    .line 69
    invoke-virtual {v1}, Lcom/cocosw/bottomsheet/ActionMenuItem;->getOrder()I

    move-result v1

    if-gt v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private findItemIndex(I)I
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 187
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cocosw/bottomsheet/ActionMenuItem;

    invoke-virtual {v3}, Lcom/cocosw/bottomsheet/ActionMenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/cocosw/bottomsheet/ActionMenuItem;
    .locals 5

    .line 222
    iget-boolean p2, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mIsQwerty:Z

    .line 223
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 224
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 227
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cocosw/bottomsheet/ActionMenuItem;

    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {v3}, Lcom/cocosw/bottomsheet/ActionMenuItem;->getAlphabeticShortcut()C

    move-result v4

    goto :goto_1

    .line 229
    :cond_0
    invoke-virtual {v3}, Lcom/cocosw/bottomsheet/ActionMenuItem;->getNumericShortcut()C

    move-result v4

    :goto_1
    if-ne p1, v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getOrdering(I)I
    .locals 2

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_0

    .line 90
    sget-object v1, Lcom/cocosw/bottomsheet/ActionMenu;->sCategoryToOrder:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 94
    sget-object v1, Lcom/cocosw/bottomsheet/ActionMenu;->sCategoryToOrder:[I

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    .line 91
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "order does not contain a valid category."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/cocosw/bottomsheet/ActionMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cocosw/bottomsheet/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8

    .line 114
    new-instance v7, Lcom/cocosw/bottomsheet/ActionMenuItem;

    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/ActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/cocosw/bottomsheet/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 116
    iget-object p1, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/cocosw/bottomsheet/ActionMenu;->getOrdering(I)I

    move-result p3

    invoke-static {p2, p3}, Lcom/cocosw/bottomsheet/ActionMenu;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result p2

    invoke-virtual {p1, p2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v7
.end method

.method add(Lcom/cocosw/bottomsheet/ActionMenuItem;)Landroid/view/MenuItem;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/ActionMenuItem;->getOrder()I

    move-result v2

    invoke-static {v2}, Lcom/cocosw/bottomsheet/ActionMenu;->getOrdering(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/cocosw/bottomsheet/ActionMenu;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/cocosw/bottomsheet/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    .line 128
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 131
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    .line 134
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/ActionMenu;->removeGroup(I)V

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    .line 138
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 139
    new-instance v3, Landroid/content/Intent;

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 141
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/cocosw/bottomsheet/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 145
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 146
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_3

    .line 147
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v4, :cond_3

    .line 148
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v3, p8, p7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method clone(I)Lcom/cocosw/bottomsheet/ActionMenu;
    .locals 4

    .line 329
    new-instance v0, Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/ActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cocosw/bottomsheet/ActionMenu;-><init>(Landroid/content/Context;)V

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 195
    invoke-direct {p0, p1}, Lcom/cocosw/bottomsheet/ActionMenu;->findItemIndex(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public hasVisibleItems()Z
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 212
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cocosw/bottomsheet/ActionMenuItem;

    invoke-virtual {v4}, Lcom/cocosw/bottomsheet/ActionMenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/cocosw/bottomsheet/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/cocosw/bottomsheet/ActionMenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/cocosw/bottomsheet/ActionMenu;->findItemIndex(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 247
    :cond_0
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cocosw/bottomsheet/ActionMenuItem;

    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/ActionMenuItem;->invoke()Z

    move-result p1

    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/cocosw/bottomsheet/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/cocosw/bottomsheet/ActionMenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 256
    :cond_0
    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/ActionMenuItem;->invoke()Z

    move-result p1

    return p1
.end method

.method public removeGroup(I)V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 261
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 264
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cocosw/bottomsheet/ActionMenuItem;

    invoke-virtual {v3}, Lcom/cocosw/bottomsheet/ActionMenuItem;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 265
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeInvisible()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 336
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cocosw/bottomsheet/ActionMenuItem;

    .line 338
    invoke-virtual {v1}, Lcom/cocosw/bottomsheet/ActionMenuItem;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 274
    invoke-direct {p0, p1}, Lcom/cocosw/bottomsheet/ActionMenu;->findItemIndex(I)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 285
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 288
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cocosw/bottomsheet/ActionMenuItem;

    .line 289
    invoke-virtual {v3}, Lcom/cocosw/bottomsheet/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 290
    invoke-virtual {v3, p2}, Lcom/cocosw/bottomsheet/ActionMenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 291
    invoke-virtual {v3, p3}, Lcom/cocosw/bottomsheet/ActionMenuItem;->setExclusiveCheckable(Z)Lcom/cocosw/bottomsheet/ActionMenuItem;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 298
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 301
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cocosw/bottomsheet/ActionMenuItem;

    .line 302
    invoke-virtual {v3}, Lcom/cocosw/bottomsheet/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 303
    invoke-virtual {v3, p2}, Lcom/cocosw/bottomsheet/ActionMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 310
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 313
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cocosw/bottomsheet/ActionMenuItem;

    .line 314
    invoke-virtual {v3}, Lcom/cocosw/bottomsheet/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 315
    invoke-virtual {v3, p2}, Lcom/cocosw/bottomsheet/ActionMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    .line 321
    iput-boolean p1, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mIsQwerty:Z

    return-void
.end method

.method public size()I
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
