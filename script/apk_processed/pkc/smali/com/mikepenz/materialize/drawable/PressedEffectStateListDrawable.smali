.class public Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "PressedEffectStateListDrawable.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# instance fields
.field private color:I

.field private selectionColor:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 3

    .line 20
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a1

    aput v2, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 25
    new-array v0, v1, [I

    invoke-virtual {p0, v0, p1}, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 27
    iput p2, p0, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;->color:I

    .line 28
    iput p3, p0, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;->selectionColor:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 3

    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 35
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x1

    .line 37
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a1

    aput v2, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 38
    new-array p2, v1, [I

    invoke-virtual {p0, p2, p1}, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 40
    iput p3, p0, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;->color:I

    .line 41
    iput p4, p0, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;->selectionColor:I

    return-void
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 5

    .line 47
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    const v4, 0x10100a1

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 53
    iget v0, p0, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;->selectionColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 55
    :cond_2
    iget v0, p0, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;->color:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 57
    :goto_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method
