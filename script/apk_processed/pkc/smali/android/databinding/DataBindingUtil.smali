.class public Landroid/databinding/DataBindingUtil;
.super Ljava/lang/Object;
.source "DataBindingUtil.java"


# static fields
.field private static sDefaultComponent:Landroid/databinding/DataBindingComponent;

.field private static sMapper:Landroid/databinding/DataBinderMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/databinding/DataBinderMapperImpl;

    invoke-direct {v0}, Landroid/databinding/DataBinderMapperImpl;-><init>()V

    sput-object v0, Landroid/databinding/DataBindingUtil;->sMapper:Landroid/databinding/DataBinderMapper;

    return-void
.end method

.method static bind(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/databinding/DataBindingComponent;",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 199
    sget-object v0, Landroid/databinding/DataBindingUtil;->sMapper:Landroid/databinding/DataBinderMapper;

    invoke-virtual {v0, p0, p1, p2}, Landroid/databinding/DataBinderMapper;->getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method static bind(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/databinding/DataBindingComponent;",
            "[",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 194
    sget-object v0, Landroid/databinding/DataBindingUtil;->sMapper:Landroid/databinding/DataBinderMapper;

    invoke-virtual {v0, p0, p1, p2}, Landroid/databinding/DataBinderMapper;->getDataBinder(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;)Landroid/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 152
    sget-object v0, Landroid/databinding/DataBindingUtil;->sDefaultComponent:Landroid/databinding/DataBindingComponent;

    invoke-static {p0, v0}, Landroid/databinding/DataBindingUtil;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            "Landroid/databinding/DataBindingComponent;",
            ")TT;"
        }
    .end annotation

    .line 174
    invoke-static {p0}, Landroid/databinding/DataBindingUtil;->getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 179
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 180
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "View is not a binding layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 183
    sget-object v2, Landroid/databinding/DataBindingUtil;->sMapper:Landroid/databinding/DataBinderMapper;

    invoke-virtual {v2, v1}, Landroid/databinding/DataBinderMapper;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 185
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View is not a binding layout. Tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_2
    sget-object v0, Landroid/databinding/DataBindingUtil;->sMapper:Landroid/databinding/DataBinderMapper;

    invoke-virtual {v0, p1, p0, v1}, Landroid/databinding/DataBinderMapper;->getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method private static bindToAddedViews(Landroid/databinding/DataBindingComponent;Landroid/view/ViewGroup;II)Landroid/databinding/ViewDataBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/databinding/DataBindingComponent;",
            "Landroid/view/ViewGroup;",
            "II)TT;"
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int v1, v0, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sub-int/2addr v0, v2

    .line 326
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 327
    invoke-static {p0, p1, p3}, Landroid/databinding/DataBindingUtil;->bind(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0

    .line 329
    :cond_0
    new-array v0, v1, [Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    add-int v3, v2, p2

    .line 331
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_1
    invoke-static {p0, v0, p3}, Landroid/databinding/DataBindingUtil;->bind(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 266
    invoke-static {p0}, Landroid/databinding/ViewDataBinding;->getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultComponent()Landroid/databinding/DataBindingComponent;
    .locals 1

    .line 65
    sget-object v0, Landroid/databinding/DataBindingUtil;->sDefaultComponent:Landroid/databinding/DataBindingComponent;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z)TT;"
        }
    .end annotation

    .line 95
    sget-object v0, Landroid/databinding/DataBindingUtil;->sDefaultComponent:Landroid/databinding/DataBindingComponent;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Landroid/databinding/DataBindingComponent;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 126
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz v1, :cond_2

    .line 128
    invoke-static {p4, p2, v0, p1}, Landroid/databinding/DataBindingUtil;->bindToAddedViews(Landroid/databinding/DataBindingComponent;Landroid/view/ViewGroup;II)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0

    .line 130
    :cond_2
    invoke-static {p4, p0, p1}, Landroid/databinding/DataBindingUtil;->bind(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method
