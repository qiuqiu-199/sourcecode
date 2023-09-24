.class final Landroid/support/v4/widget/FlingNestedScrollView$SavedState$1;
.super Ljava/lang/Object;
.source "FlingNestedScrollView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/FlingNestedScrollView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/widget/FlingNestedScrollView$SavedState;
    .locals 1

    .line 1332
    new-instance v0, Landroid/support/v4/widget/FlingNestedScrollView$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/FlingNestedScrollView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1330
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/widget/FlingNestedScrollView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/v4/widget/FlingNestedScrollView$SavedState;
    .locals 0

    .line 1336
    new-array p1, p1, [Landroid/support/v4/widget/FlingNestedScrollView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1330
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView$SavedState$1;->newArray(I)[Landroid/support/v4/widget/FlingNestedScrollView$SavedState;

    move-result-object p1

    return-object p1
.end method
