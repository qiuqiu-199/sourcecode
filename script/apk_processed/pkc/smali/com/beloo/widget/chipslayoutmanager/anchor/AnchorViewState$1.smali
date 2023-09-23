.class final Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState$1;
.super Ljava/lang/Object;
.source "AnchorViewState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
    .locals 2

    .line 76
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;-><init>(Landroid/os/Parcel;Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
    .locals 0

    .line 80
    new-array p1, p1, [Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState$1;->newArray(I)[Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object p1

    return-object p1
.end method
