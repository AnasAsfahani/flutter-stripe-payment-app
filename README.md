# Flutter Stripe Payment App

A Flutter payment application integrating **Stripe** to demonstrate modern payment experiences, secure payment processing, and clean software architecture.

Built with Flutter and Dart, this project explores two complementary payment experiences: a custom credit card interface and Stripe's native payment flow, including saved payment methods.

---

## Overview

The application demonstrates how to integrate Stripe into a Flutter application while maintaining a modular and maintainable architecture.

It combines a custom-designed payment experience with Stripe's payment infrastructure, covering payment initialization, customer management, saved cards, and payment confirmation.

## Features

### Payment Experience
- Custom credit card UI.
- Interactive credit card form and card preview.
- Payment screen with order summary.
- Payment success screen.

### Stripe Integration
- Stripe PaymentIntent integration.
- Stripe Customer creation and management.
- Ephemeral Key integration.
- Native Stripe Payment Sheet.
- Saved payment methods and cards.
- Payment confirmation and success handling.

### Architecture & Engineering
- Feature-based project structure.
- Repository Pattern.
- Cubit state management.
- Functional error handling using Dartz `Either`.
- Separation of presentation, business logic, and data access.

---

## Screenshots

The following screenshots showcase the application interface and the complete payment experience.

### Application Screens

| Splash Screen | Cart Screen |
|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/61930f53-51da-44d7-8f0b-283d8a966f74" width="240" alt="Payment Screen" /> | <img src="https://github.com/user-attachments/assets/beb9aa09-ca68-4fc8-9185-e6eff801dbf0" width="240" alt="Splash Screen" /> |

| Custom Card Details | Payment Success |
|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/d99ecbb4-e4c9-4bab-81e5-4e88d1e0b77a" width="240" alt="Custom Card Details" /> | <img src="https://github.com/user-attachments/assets/63927508-a8a7-4b8f-a2b6-bd75edda60cc" width="240" alt="Payment Success" /> |

### Stripe Payment Flow

| Stripe Payment Sheet | Saved Customer Payment Methods | Stripe Payment Success |
|:---:|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/354e9a3d-9eff-4209-b35f-2ad953ed55b9" width="200" alt="Stripe Payment Sheet" /> | <img src="https://github.com/user-attachments/assets/7c31a4fe-ecd6-4615-9431-70ac89f82a1b" width="200" alt="Stripe Saved Cards" /> | <img src="https://github.com/user-attachments/assets/46ec013f-575e-429f-a716-38dedfafd15b" width="200" alt="Stripe Payment Success" /> |

---

## Demo Videos

Watch the application in action through these two demonstrations.

### 1. Custom Flutter Credit Card Experience

Demonstrates the custom-designed credit card interface, card information input, and interactive card preview.

**Video:** [Watch Custom Card UI Demo](

https://github.com/user-attachments/assets/30c77b4a-9e9b-4873-9821-4abf3662a7aa

)

### 2. Stripe Payment Integration

Demonstrates the Stripe payment workflow, including the Payment Sheet, saved payment methods, and successful payment confirmation.

**Video:** [Watch Stripe Payment Flow Demo](

https://github.com/user-attachments/assets/e54613c3-94cc-4168-8502-d0e95b1fa4b5

)

---

## Tech Stack

| Technology | Purpose |
|---|---|
| Flutter | Cross-platform application development |
| Dart | Programming language |
| Stripe | Payment processing |
| Dio | HTTP client and API communication |
| Flutter Bloc / Cubit | State management |
| Dartz | Functional error handling |
| Repository Pattern | Data access abstraction |

---

## Architecture

The project follows a feature-based layered architecture, separating presentation, domain contracts, and data implementation.

```text
lib/
├── core/
│   ├── services/
│   ├── errors/
│   └── utils/
│
├── features/
│   └── payment/
│       ├── data/
│       │   ├── models/
│       │   ├── repositories/
│       │   └── services/
│       │
│       ├── domain/
│       │   └── repositories/
│       │
│       └── presentation/
│           ├── cubit/
│           ├── screens/
│           └── widgets/
│
└── main.dart
```

---

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Android Studio or Visual Studio Code
- Stripe account
- A configured backend for Stripe API operations

### Installation

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/flutter-stripe-payment-app.git
```

Navigate to the project directory:

```bash
cd flutter-stripe-payment-app
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

### Stripe Configuration

This application requires Stripe configuration and backend integration.

Before running the project:

1. Create a Stripe account.
2. Configure your Stripe test environment.
3. Set up the backend endpoints required for payment initialization and customer management.
4. Configure the application with the appropriate publishable key and backend API URL.

**Security Notice:** Stripe secret keys must remain on the backend and must never be committed to the repository or embedded in the Flutter application.

---

## Error Handling

The application uses Dartz `Either` to represent successful and failed operations.

This approach helps maintain predictable data flow and separates API errors from presentation-layer state management.

---

## Author

**Anas Asfahani**

Flutter Developer | Software Engineer

- **GitHub:** [AnasAsfahani](https://github.com/YOUR_USERNAME)
- **Portfolio:** [anasasfahani.netlify.app](https://anasasfahani.netlify.app)
- **LinkedIn:** [Anas Asfahani](https://www.linkedin.com/in/anas-asfahani-5724402a5/)

---

*Developed with Flutter, Dart, and Stripe.*
