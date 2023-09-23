.class Lnordpol/android/NfcGuideView$2;
.super Ljava/lang/Object;
.source "NfcGuideView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnordpol/android/NfcGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnordpol/android/NfcGuideView;


# direct methods
.method constructor <init>(Lnordpol/android/NfcGuideView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lnordpol/android/NfcGuideView$2;->this$0:Lnordpol/android/NfcGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lnordpol/android/NfcGuideView$2;->this$0:Lnordpol/android/NfcGuideView;

    invoke-static {v0}, Lnordpol/android/NfcGuideView;->access$400(Lnordpol/android/NfcGuideView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lnordpol/android/NfcGuideView$2;->this$0:Lnordpol/android/NfcGuideView;

    invoke-static {v0}, Lnordpol/android/NfcGuideView;->access$400(Lnordpol/android/NfcGuideView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 146
    :goto_0
    iget-object v0, p0, Lnordpol/android/NfcGuideView$2;->this$0:Lnordpol/android/NfcGuideView;

    iget-object v1, p0, Lnordpol/android/NfcGuideView$2;->this$0:Lnordpol/android/NfcGuideView;

    invoke-static {v1}, Lnordpol/android/NfcGuideView;->access$400(Lnordpol/android/NfcGuideView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lnordpol/android/NfcGuideView;->access$502(Lnordpol/android/NfcGuideView;I)I

    .line 147
    iget-object v0, p0, Lnordpol/android/NfcGuideView$2;->this$0:Lnordpol/android/NfcGuideView;

    iget-object v1, p0, Lnordpol/android/NfcGuideView$2;->this$0:Lnordpol/android/NfcGuideView;

    invoke-static {v1}, Lnordpol/android/NfcGuideView;->access$400(Lnordpol/android/NfcGuideView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lnordpol/android/NfcGuideView;->access$602(Lnordpol/android/NfcGuideView;I)I

    .line 148
    iget-object v0, p0, Lnordpol/android/NfcGuideView$2;->this$0:Lnordpol/android/NfcGuideView;

    invoke-static {v0}, Lnordpol/android/NfcGuideView;->access$300(Lnordpol/android/NfcGuideView;)V

    return-void
.end method
