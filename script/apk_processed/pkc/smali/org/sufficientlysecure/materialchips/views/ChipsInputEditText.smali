.class public Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "ChipsInputEditText.java"


# instance fields
.field private filterableListView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isFilterableListVisible()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->filterableListView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->filterableListView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFilterableListView(Landroid/view/View;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->filterableListView:Landroid/view/View;

    return-void
.end method
