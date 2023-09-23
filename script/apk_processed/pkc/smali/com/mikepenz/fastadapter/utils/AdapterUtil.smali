.class public Lcom/mikepenz/fastadapter/utils/AdapterUtil;
.super Ljava/lang/Object;
.source "AdapterUtil.java"


# direct methods
.method public static addAllSubItems(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IItem;",
            "Ljava/util/List<",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">;)V"
        }
    .end annotation

    .line 180
    instance-of v0, p0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p0

    .line 182
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 183
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-static {v0, p1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->addAllSubItems(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static adjustPosition(Landroid/util/SparseIntArray;III)Landroid/util/SparseIntArray;
    .locals 5

    .line 91
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 93
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 95
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-lt v3, p1, :cond_3

    if-le v3, p2, :cond_0

    goto :goto_1

    :cond_0
    if-lez p3, :cond_1

    add-int/2addr v3, p3

    .line 102
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_1
    if-gez p3, :cond_4

    add-int v4, p1, p3

    if-le v3, v4, :cond_2

    if-gt v3, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v3, p3

    .line 110
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 99
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static adjustPosition(Ljava/util/Set;III)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;III)",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 57
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 58
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, p1, :cond_4

    if-le v1, p2, :cond_1

    goto :goto_1

    :cond_1
    if-lez p3, :cond_2

    add-int/2addr v1, p3

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-gez p3, :cond_0

    add-int v2, p1, p3

    if-le v1, v2, :cond_3

    if-gt v1, p1, :cond_3

    goto :goto_0

    :cond_3
    add-int/2addr v1, p3

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static findSubItemSelections(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IItem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 144
    instance-of v0, p0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 147
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    invoke-static {v0, p1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->findSubItemSelections(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getAllItems(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter;",
            ")",
            "Ljava/util/List<",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 166
    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    .line 167
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {v3, v0}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->addAllSubItems(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static handleStates(Lcom/mikepenz/fastadapter/FastAdapter;II)V
    .locals 3

    :goto_0
    if-lt p2, p1, :cond_3

    .line 29
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 31
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelections()Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelections()Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelections()Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 36
    :cond_1
    :goto_1
    instance-of v1, v0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v1, :cond_2

    .line 37
    check-cast v0, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getExpanded()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 38
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->expand(I)V

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static restoreSubItemSelectionStatesForAlternativeStateManagement(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IItem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 125
    instance-of v0, p0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p0

    .line 127
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 128
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 130
    invoke-interface {v0, v1}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 132
    :cond_0
    invoke-static {v0, p1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->restoreSubItemSelectionStatesForAlternativeStateManagement(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
