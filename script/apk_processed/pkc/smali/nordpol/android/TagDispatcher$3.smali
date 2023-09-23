.class Lnordpol/android/TagDispatcher$3;
.super Ljava/lang/Object;
.source "TagDispatcher.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnordpol/android/TagDispatcher;->enableReaderMode(Landroid/nfc/NfcAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnordpol/android/TagDispatcher;


# direct methods
.method constructor <init>(Lnordpol/android/TagDispatcher;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lnordpol/android/TagDispatcher$3;->this$0:Lnordpol/android/TagDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lnordpol/android/TagDispatcher$3;->this$0:Lnordpol/android/TagDispatcher;

    invoke-static {v0, p1}, Lnordpol/android/TagDispatcher;->access$100(Lnordpol/android/TagDispatcher;Landroid/nfc/Tag;)V

    return-void
.end method
