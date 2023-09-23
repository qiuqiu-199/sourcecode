.class Landroid/databinding/ViewDataBinding$WeakListListener;
.super Landroid/databinding/ObservableList$OnListChangedCallback;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/databinding/ViewDataBinding$ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakListListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/ObservableList$OnListChangedCallback;",
        "Landroid/databinding/ViewDataBinding$ObservableReference<",
        "Landroid/databinding/ObservableList;",
        ">;"
    }
.end annotation


# instance fields
.field final mListener:Landroid/databinding/ViewDataBinding$WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ViewDataBinding$WeakListener<",
            "Landroid/databinding/ObservableList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/databinding/ViewDataBinding;I)V
    .locals 1

    .line 1416
    invoke-direct {p0}, Landroid/databinding/ObservableList$OnListChangedCallback;-><init>()V

    .line 1417
    new-instance v0, Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-direct {v0, p1, p2, p0}, Landroid/databinding/ViewDataBinding$WeakListener;-><init>(Landroid/databinding/ViewDataBinding;ILandroid/databinding/ViewDataBinding$ObservableReference;)V

    iput-object v0, p0, Landroid/databinding/ViewDataBinding$WeakListListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/databinding/ObservableList;)V
    .locals 0

    .line 1431
    invoke-interface {p1, p0}, Landroid/databinding/ObservableList;->addOnListChangedCallback(Landroid/databinding/ObservableList$OnListChangedCallback;)V

    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .locals 0

    .line 1412
    check-cast p1, Landroid/databinding/ObservableList;

    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$WeakListListener;->addListener(Landroid/databinding/ObservableList;)V

    return-void
.end method

.method public getListener()Landroid/databinding/ViewDataBinding$WeakListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ViewDataBinding$WeakListener<",
            "Landroid/databinding/ObservableList;",
            ">;"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$WeakListListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    return-object v0
.end method

.method public removeListener(Landroid/databinding/ObservableList;)V
    .locals 0

    .line 1436
    invoke-interface {p1, p0}, Landroid/databinding/ObservableList;->removeOnListChangedCallback(Landroid/databinding/ObservableList$OnListChangedCallback;)V

    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0

    .line 1412
    check-cast p1, Landroid/databinding/ObservableList;

    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$WeakListListener;->removeListener(Landroid/databinding/ObservableList;)V

    return-void
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method
