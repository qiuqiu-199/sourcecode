.class Lnordpol/android/TagDispatcher$1;
.super Ljava/lang/Object;
.source "TagDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnordpol/android/TagDispatcher;->dispatchTag(Landroid/nfc/Tag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnordpol/android/TagDispatcher;

.field final synthetic val$tag:Landroid/nfc/Tag;


# direct methods
.method constructor <init>(Lnordpol/android/TagDispatcher;Landroid/nfc/Tag;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lnordpol/android/TagDispatcher$1;->this$0:Lnordpol/android/TagDispatcher;

    iput-object p2, p0, Lnordpol/android/TagDispatcher$1;->val$tag:Landroid/nfc/Tag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 309
    iget-object v0, p0, Lnordpol/android/TagDispatcher$1;->this$0:Lnordpol/android/TagDispatcher;

    invoke-static {v0}, Lnordpol/android/TagDispatcher;->access$000(Lnordpol/android/TagDispatcher;)Lnordpol/android/OnDiscoveredTagListener;

    move-result-object v0

    iget-object v1, p0, Lnordpol/android/TagDispatcher$1;->val$tag:Landroid/nfc/Tag;

    invoke-interface {v0, v1}, Lnordpol/android/OnDiscoveredTagListener;->tagDiscovered(Landroid/nfc/Tag;)V

    return-void
.end method
