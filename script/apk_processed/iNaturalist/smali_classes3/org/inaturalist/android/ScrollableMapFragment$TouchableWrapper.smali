.class public Lorg/inaturalist/android/ScrollableMapFragment$TouchableWrapper;
.super Landroid/widget/FrameLayout;
.source "ScrollableMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ScrollableMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchableWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ScrollableMapFragment;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/ScrollableMapFragment;Landroid/content/Context;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/inaturalist/android/ScrollableMapFragment$TouchableWrapper;->this$0:Lorg/inaturalist/android/ScrollableMapFragment;

    .line 43
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lorg/inaturalist/android/ScrollableMapFragment$TouchableWrapper;->this$0:Lorg/inaturalist/android/ScrollableMapFragment;

    invoke-static {v0}, Lorg/inaturalist/android/ScrollableMapFragment;->access$000(Lorg/inaturalist/android/ScrollableMapFragment;)Lorg/inaturalist/android/ScrollableMapFragment$OnTouchListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/inaturalist/android/ScrollableMapFragment$OnTouchListener;->onTouch()V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lorg/inaturalist/android/ScrollableMapFragment$TouchableWrapper;->this$0:Lorg/inaturalist/android/ScrollableMapFragment;

    invoke-static {v0}, Lorg/inaturalist/android/ScrollableMapFragment;->access$000(Lorg/inaturalist/android/ScrollableMapFragment;)Lorg/inaturalist/android/ScrollableMapFragment$OnTouchListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/inaturalist/android/ScrollableMapFragment$OnTouchListener;->onTouch()V

    .line 56
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
