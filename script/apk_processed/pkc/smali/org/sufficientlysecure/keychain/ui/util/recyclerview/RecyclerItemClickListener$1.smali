.class Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RecyclerItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 41
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$1;->this$0:Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;

    invoke-direct {v0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$1;---><init>(Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    const/4 v1, 0x1

    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$1;--->onSingleTapUp(Landroid/view/MotionEvent;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
